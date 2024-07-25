/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2018/10/28     Bernard      The unify RISC-V porting implementation
 * 2018/12/27     Jesven       Add SMP support
 * 2021/02/02     lizhirui     Add userspace support
 */

#include "cpuport.h"
#include "stackframe.h"

    .globl rt_hw_context_switch_to
rt_hw_context_switch_to:
    LOAD sp, (a0)

    jal rt_thread_self
    mv s1, a0

    RESTORE_ALL 0
    mret

/*
 * void rt_hw_context_switch(rt_ubase_t from, rt_ubase_t to);
 *
 * a0 --> from
 * a1 --> to
 */
    .globl rt_hw_context_switch
rt_hw_context_switch:
    csrw mscratch, sp

    // fake a mepc to return to the caller
    # li t0, 0x00001880 // force to machine mode(MPP=11) and set MPIE to 1
    li t0, 0x00001800 // force to machine mode(MPP=11)
    csrs mstatus, t0
    csrw mepc, ra//return address

    //saved from thread context
    SAVE_ALL

    STORE sp, (a0)

    //restore to thread context
    LOAD sp, (a1)

    jal rt_thread_self
    mv s1, a0

    RESTORE_ALL 1
    mret
