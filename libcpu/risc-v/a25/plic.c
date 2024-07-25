/*
 * Copyright (c) 2006-2023, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021-10-19     JasonHu      first version
 * 2021-11-12     JasonHu      fix bug that not intr on f133
 * 2023-04-22     flyingcys    add plic register ioremap
 */

#include <rtthread.h>

#include <rtdbg.h>

#include "interrupt.h"
#include "plic.h"

extern struct rt_irq_desc isr_table[];

rt_inline void plic_irq_toggle(int hwirq, int enable)
{
    if (enable)
    {
        __nds__plic_enable_interrupt(hwirq);
    }
    else
    {
        __nds__plic_disable_interrupt(hwirq);
    }
}

static void generic_handle_irq(int irq)
{
    rt_isr_handler_t isr;
    void            *param;

    if (irq < 0 || irq >= IRQ_MAX_NR)
    {
        LOG_E("bad irq number %d!\n", irq);
        return;
    }

    if (!irq) // irq = 0 => no irq
    {
        LOG_W("no irq!\n");
        return;
    }
    isr   = isr_table[IRQ_OFFSET + irq].handler;
    param = isr_table[IRQ_OFFSET + irq].param;
    if (isr != RT_NULL)
    {
        isr(irq, param);
    }
    /* complete irq. */
    __nds__plic_complete_interrupt(irq);
}

void plic_disable_irq(int irqno)
{
    plic_irq_toggle(irqno, 0);
}

void plic_enable_irq(int irqno)
{
    plic_irq_toggle(irqno, 1);
}

/*
 * Handling an interrupt is a two-step process: first you claim the interrupt
 * by reading the claim register, then you complete the interrupt by writing
 * that source ID back to the same claim register.  This automatically enables
 * and disables the interrupt, so there's nothing else to do.
 */
void plic_handle_irq(void)
{
    int          cpu = 0;
    unsigned int irq;

    /* Enable interrupts in general to allow nested */
    HAL_MIE_ENABLE();

    while ((irq = __nds__plic_claim_interrupt()))
    {
        /* ID0 is diabled permantually from spec. */
        if (irq == 0)
        {
            LOG_E("irq no is zero.");
        }
        else
        {
            generic_handle_irq(irq);
        }
    }
    /* Disable interrupt in general to restore context */
    HAL_MIE_DISABLE();
}

void plic_init(void)
{
    // __nds__plic_enable_interrupt(0);

    HAL_MEIP_ENABLE();
}
