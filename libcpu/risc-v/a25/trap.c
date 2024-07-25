/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021/1/30      lizirui      first version
 * 2021/10/20     JasonHu      move to trap.c
 */

#include <rthw.h>
#include <rtthread.h>
#include <stdint.h>


#include "tick.h"
#include "stack.h"
#include "riscv.h"
#include "interrupt.h"
#include "plic.h"

#ifdef RT_USING_SMART
#include <lwp_arch.h>
void rt_hw_backtrace(rt_uint32_t *ffp, rt_ubase_t sepc);
#else
#define rt_hw_backtrace(...) (0)
#endif

#define DBG_TAG "libcpu.trap"
#define DBG_LVL DBG_INFO
#include <rtdbg.h>

void dump_regs(struct rt_hw_stack_frame *regs)
{
    rt_kprintf("--------------Dump Registers-----------------\n");

    rt_kprintf("Function Registers:\n");
    rt_kprintf("\tra(x1) = 0x%p\tuser_sp = 0x%p\n", regs->ra, regs->user_sp_exc_stack);
    rt_kprintf("\tgp(x3) = 0x%p\ttp(x4) = 0x%p\n", regs->gp, regs->tp);
    rt_kprintf("Temporary Registers:\n");
    rt_kprintf("\tt0(x5) = 0x%p\tt1(x6) = 0x%p\n", regs->t0, regs->t1);
    rt_kprintf("\tt2(x7) = 0x%p\n", regs->t2);
    rt_kprintf("\tt3(x28) = 0x%p\tt4(x29) = 0x%p\n", regs->t3, regs->t4);
    rt_kprintf("\tt5(x30) = 0x%p\tt6(x31) = 0x%p\n", regs->t5, regs->t6);
    rt_kprintf("Saved Registers:\n");
    rt_kprintf("\ts0/fp(x8) = 0x%p\ts1(x9) = 0x%p\n", regs->s0_fp, regs->s1);
    rt_kprintf("\ts2(x18) = 0x%p\ts3(x19) = 0x%p\n", regs->s2, regs->s3);
    rt_kprintf("\ts4(x20) = 0x%p\ts5(x21) = 0x%p\n", regs->s4, regs->s5);
    rt_kprintf("\ts6(x22) = 0x%p\ts7(x23) = 0x%p\n", regs->s6, regs->s7);
    rt_kprintf("\ts8(x24) = 0x%p\ts9(x25) = 0x%p\n", regs->s8, regs->s9);
    rt_kprintf("\ts10(x26) = 0x%p\ts11(x27) = 0x%p\n", regs->s10, regs->s11);
    rt_kprintf("Function Arguments Registers:\n");
    rt_kprintf("\ta0(x10) = 0x%p\ta1(x11) = 0x%p\n", regs->a0, regs->a1);
    rt_kprintf("\ta2(x12) = 0x%p\ta3(x13) = 0x%p\n", regs->a2, regs->a3);
    rt_kprintf("\ta4(x14) = 0x%p\ta5(x15) = 0x%p\n", regs->a4, regs->a5);
    rt_kprintf("\ta6(x16) = 0x%p\ta7(x17) = 0x%p\n", regs->a6, regs->a7);
    rt_kprintf("mstatus = 0x%p\n", regs->mstatus);
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_MIE) ? "Machine Interrupt Enabled" : "Machine Interrupt Disabled");
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_MPIE) ? "Last Time Machine Interrupt Enabled" : "Last Time Machine Interrupt Disabled");
    rt_kprintf("\tLast Privilege Mode:%d\n", (regs->mstatus & MSTATUS_MPP)>>11);
    // rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_PUM) ? "Permit to Access User Page" : "Not Permit to Access User Page");
    // rt_kprintf("\t%s\n", (regs->mstatus & (1 << 19)) ? "Permit to Read Executable-only Page" : "Not Permit to Read Executable-only Page");
    // rt_uintreg_t satp_v = read_csr(satp);
    // rt_kprintf("satp = 0x%p\n", satp_v);
    // rt_kprintf("\tCurrent Page Table(Physical) = 0x%p\n", __MASKVALUE(satp_v, __MASK(44)) << PAGE_OFFSET_BIT);
    // rt_kprintf("\tCurrent ASID = 0x%p\n", __MASKVALUE(satp_v >> 44, __MASK(16)) << PAGE_OFFSET_BIT);
    // const char *mode_str = "Unknown Address Translation/Protection Mode";

    // switch (__MASKVALUE(satp_v >> 60, __MASK(4)))
    // {
    //     case 0:
    //         mode_str = "No Address Translation/Protection Mode";
    //         break;

    //     case 8:
    //         mode_str = "Page-based 39-bit Virtual Addressing Mode";
    //         break;

    //     case 9:
    //         mode_str = "Page-based 48-bit Virtual Addressing Mode";
    //         break;
    // }

    // rt_kprintf("\tMode = %s\n", mode_str);
    rt_kprintf("-----------------Dump OK---------------------\n");
}

static const char *Exception_Name[] =
    {
        "Instruction Address Misaligned",
        "Instruction Access Fault",
        "Illegal Instruction",
        "Breakpoint",
        "Load Address Misaligned",
        "Load Access Fault",
        "Store/AMO Address Misaligned",
        "Store/AMO Access Fault",
        "Environment call from U-mode",
        "Environment call from S-mode",
        "Reserved-10",
        "Reserved-11",
        "Instruction Page Fault",
        "Load Page Fault",
        "Reserved-14",
        "Store/AMO Page Fault"};

static const char *Interrupt_Name[] =
    {
        "User Software Interrupt",
        "Machine Software Interrupt",
        "Reversed-2",
        "Reversed-3",
        "User Timer Interrupt",
        "Machine Timer Interrupt",
        "Reversed-6",
        "Reversed-7",
        "User External Interrupt",
        "Machine External Interrupt",
        "Reserved-10",
        "Reserved-11",
};

#ifndef RT_USING_SMP
static volatile int nested = 0;
#define ENTER_TRAP \
    nested += 1
#define EXIT_TRAP \
    nested -= 1
#define CHECK_NESTED_PANIC(cause, tval, epc, eframe) \
    if (nested != 1)                                 \
    handle_nested_trap_panic(cause, tval, epc, eframe)
#endif /* RT_USING_SMP */

static const char *get_exception_msg(int id)
{
    const char *msg;
    if (id < sizeof(Exception_Name) / sizeof(const char *))
    {
        msg = Exception_Name[id];
    }
    else
    {
        msg = "Unknown Exception";
    }
    return msg;
}

static void handle_nested_trap_panic(
    rt_size_t cause,
    rt_size_t tval,
    rt_size_t epc,
    struct rt_hw_stack_frame *eframe)
{
    LOG_E("\n-------- [SEVER ERROR] --------");
    LOG_E("Nested trap detected");
    LOG_E("mcause:0x%p,mtval:0x%p,mepc:0x%p\n", cause, tval, epc);
    dump_regs(eframe);
    rt_hw_cpu_shutdown();
}

#define IN_USER_SPACE (stval >= USER_VADDR_START && stval < USER_VADDR_TOP)
#define PAGE_FAULT (id == EP_LOAD_PAGE_FAULT || id == EP_STORE_PAGE_FAULT)

/* Trap entry */
void handle_trap(rt_size_t mcause, rt_size_t mtval, rt_size_t mepc, struct rt_hw_stack_frame *sp)
{
    rt_size_t id = mcause & MCAUSE_CAUSE;
    const char *msg;

    /* supervisor external interrupt */
    if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_EXT))
    {
        rt_interrupt_enter();
        plic_handle_irq();
        rt_interrupt_leave();
        return;
    }
    else if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_TIMER))
    {
        /* supervisor timer */
        rt_interrupt_enter();
        tick_isr();
        rt_interrupt_leave();
        return;
    }
    else if (MCAUSE_INT & mcause)
    {
        if(id < sizeof(Interrupt_Name) / sizeof(const char *))
        {
            msg = Interrupt_Name[id];
        }
        else
        {
            msg = "Unknown Interrupt";
        }
        LOG_E("Unhandled Interrupt %ld:%s\n",id,msg);
    }
    else
    {
        // handle kernel exception:
        rt_kprintf("Unhandled Exception %ld:%s\n", id, get_exception_msg(id));
    }

    rt_kprintf("mcause:0x%p,mtval:0x%p,mepc:0x%p\n", mcause, mtval, mepc);
    dump_regs(sp);
    rt_kprintf("--------------Thread list--------------\n");
    rt_kprintf("current thread: %s\n", rt_thread_self()->parent.name);

    extern struct rt_thread *rt_current_thread;
    rt_kprintf("--------------Backtrace--------------\n");
    rt_hw_backtrace((uint32_t *)sp->s0_fp, sepc);

    while (1)
        ;
}
