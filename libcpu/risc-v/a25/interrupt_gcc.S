/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018/10/02     Bernard      The first version
 * 2018/12/27     Jesven       Add SMP schedule
 * 2021/02/02     lizhirui     Add userspace support
 * 2021/12/24     JasonHu      Add user setting save/restore
 * 2022/10/22     WangXiaoyao  Support kernel mode RVV;
 *                             Rewrite trap handling routine
 */

#include "cpuport.h"
#include "stackframe.h"

    .align 2
    .global trap_entry
    .global debug_check_sp
trap_entry:
    // distingush exception from kernel or user
    csrrw   sp, mscratch, sp
    bnez    sp, _save_context

    // BE REALLY careful with mscratch,
    // if it's wrong, we could looping here forever
    // or accessing random memory and seeing things totally
    // messy after a long time and don't even know why
_from_kernel:
    csrr    sp, mscratch
    j _save_context

_save_context:
    SAVE_ALL
    // clear mscratch to say 'now in kernel mode'
    csrw    mscratch, zero

    RESTORE_SYS_GP


_handle_interrupt_and_exception:
    csrr a0, mcause
    csrrc   a1, mtval, zero
    csrr    a2, mepc
    // sp as exception frame pointer
    mv      a3, sp
    call    handle_trap

_interrupt_exit:
    la      s0, rt_thread_switch_interrupt_flag
    lw      s2, 0(s0)
    beqz    s2, _resume_execution
    sw      zero, 0(s0)

_context_switch:
    la      t0, rt_interrupt_from_thread
    LOAD    a0, 0(t0)
    la      t0, rt_interrupt_to_thread
    LOAD    a1, 0(t0)
    jal     rt_hw_context_switch

_resume_execution:
    RESTORE_ALL 1
    mret

.global rt_hw_interrupt_enable
rt_hw_interrupt_enable:
    csrs mstatus, a0    /* restore to old csr */
    jr ra

.global rt_hw_interrupt_disable
rt_hw_interrupt_disable:
    csrrci a0, mstatus, 8   /* clear MIE */
    jr ra