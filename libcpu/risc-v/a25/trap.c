/*
 * ******************************************************************************************
 * File		: trap.c
 * Author	: GowinSemicoductor
 * Chip		: AE350_SOC
 * Function	: Trap handler
 * ******************************************************************************************
 */

// No Vectored PLIC

// Includes ---------------------------------------------------------------------------------
#include <stdio.h>
#include "cpuport.h"
#include "interrupt.h"
#include "riscv.h"
#include "stack.h"
#include "regtypes.h"
#include "ae350_soc/ae350/plic.h"

#ifdef RT_USING_SMART
#include <lwp_arch.h>
#else
#define rt_hw_backtrace(...) (0)
#endif

#define DBG_TAG "libcpu.trap"
#define DBG_LVL DBG_INFO
#include <rtdbg.h>


// Definitions ------------------------------------------------------------------------------

// Machine timer interrupt handler
__attribute__((weak)) void mtime_handler(void)
{
	clear_csr(NDS_MIE, MIP_MTIP);
}

// Machine software interrupt handler
__attribute__((weak)) void mswi_handler(void)
{
	clear_csr(NDS_MIE, MIP_MSIP);
}

// System call interrupt handler
__attribute__((weak)) void syscall_handler(long n, long a0, long a1, long a2, long a3)
{
	printf("syscall #%ld (a0:0x%lx,a1:0x%lx, a2:0x%lx, a3:0x%lx)\n", n, a0, a1, a2, a3);
}

// Exception interrupt handler
__attribute__((weak)) long except_handler(long cause, long epc)
{
	/* Unhandled Trap */
	printf("Unhandled Trap : mcause = 0x%x, mepc = 0x%x\n", (unsigned int)cause, (unsigned int)epc);

	return epc;
}

// Trap entry
void trap_entry(void) __attribute__ ((interrupt ("machine") , aligned(4)));
void trap_entry(void)
{
	long mcause = read_csr(NDS_MCAUSE);
	long mepc = read_csr(NDS_MEPC);
	long mstatus = read_csr(NDS_MSTATUS);
#if SUPPORT_PFT_ARCH
	long mxstatus = read_csr(NDS_MXSTATUS);
#endif
#ifdef __riscv_dsp
	int ucode = read_csr(NDS_UCODE);
#endif
#ifdef __riscv_flen
	int fcsr = read_fcsr();
#endif

	/* clobbers list for ecall */
#ifdef __riscv_32e
	__asm volatile("" : : :"t0", "a0", "a1", "a2", "a3");
#else
	__asm volatile("" : : :"a7", "a0", "a1", "a2", "a3");
#endif

	/* Do your trap handling */
	if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_EXT))
	{
		/* Machine-level interrupt from PLIC */
		mext_interrupt(__nds__plic_claim_interrupt());
	}
	else if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_TIMER))
	{
		/* Machine timer interrupt */
		mtime_handler();
	}
	else if ((mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == IRQ_M_SOFT))
	{
		/* Machine SWI interrupt */
		mswi_handler();

		/* Machine SWI is connected to PLIC_SW source 1 */
		__nds__plic_sw_complete_interrupt((read_csr(NDS_MHARTID) + 1));
	}
	else if (!(mcause & MCAUSE_INT) && ((mcause & MCAUSE_CAUSE) == TRAP_M_ECALL))
	{
		/* Machine Syscal call */
		__asm volatile(
				"mv a4, a3\n"
				"mv a3, a2\n"
				"mv a2, a1\n"
				"mv a1, a0\n"
#ifdef __riscv_32e
				"mv a0, t0\n"
#else
				"mv a0, a7\n"
#endif
				"call syscall_handler\n"
				: : : "a4"
		);
		mepc += 4;
	}
	else
	{
		/* Unhandled Trap */
		mepc = except_handler(mcause, mepc);
	}

	/* Restore CSR */
	write_csr(NDS_MSTATUS, mstatus);
	write_csr(NDS_MEPC, mepc);
#if SUPPORT_PFT_ARCH
	write_csr(NDS_MXSTATUS, mxstatus);
#endif
#ifdef __riscv_dsp
	write_csr(NDS_UCODE, ucode);
#endif
#ifdef __riscv_flen
	write_fcsr(fcsr);
#endif
}

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
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_SIE) ? "Supervisor Interrupt Enabled" : "Supervisor Interrupt Disabled");
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_SPIE) ? "Last Time Supervisor Interrupt Enabled" : "Last Time Supervisor Interrupt Disabled");
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_SPP) ? "Last Privilege is Supervisor Mode" : "Last Privilege is User Mode");
    rt_kprintf("\t%s\n", (regs->mstatus & MSTATUS_PUM) ? "Permit to Access User Page" : "Not Permit to Access User Page");
    rt_kprintf("\t%s\n", (regs->mstatus & (1 << 19)) ? "Permit to Read Executable-only Page" : "Not Permit to Read Executable-only Page");
    rt_uintreg_t satp_v = read_csr(satp);
    rt_kprintf("satp = 0x%p\n", satp_v);
    rt_kprintf("\tCurrent Page Table(Physical) = 0x%p\n", __MASKVALUE(satp_v, __MASK(44)) << PAGE_OFFSET_BIT);
    rt_kprintf("\tCurrent ASID = 0x%p\n", __MASKVALUE(satp_v >> 44, __MASK(16)) << PAGE_OFFSET_BIT);
    const char *mode_str = "Unknown Address Translation/Protection Mode";

    switch (__MASKVALUE(satp_v >> 60, __MASK(4)))
    {
        case 0:
            mode_str = "No Address Translation/Protection Mode";
            break;

        case 8:
            mode_str = "Page-based 39-bit Virtual Addressing Mode";
            break;

        case 9:
            mode_str = "Page-based 48-bit Virtual Addressing Mode";
            break;
    }

    rt_kprintf("\tMode = %s\n", mode_str);
    rt_kprintf("-----------------Dump OK---------------------\n");
}

