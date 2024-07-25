/*
 * ******************************************************************************************
 * File		: interrupt.c
 * Author	: GowinSemicoductor
 * Chip		: AE350_SOC
 * Function	: Platform level external interrupt handler
 * ******************************************************************************************
 */

// No Vectored PLIC

// Includes ---------------------------------------------------------------------------------
#include <rthw.h>
#include <rtthread.h>

#include <stdio.h>
#include "interrupt.h"
#include "plic.h"


struct rt_irq_desc isr_table[INTERRUPTS_MAX];

// Default interrupt handler functions
static void rt_hw_interrupt_handler(int vector, void *param)
{
    rt_kprintf("Unhandled interrupt %d occured!!!\n", vector);
}

/**
 * This function will initialize hardware interrupt
 */
void rt_hw_interrupt_init(void)
{
    /* init interrupt controller */
    // plic_init();

    rt_int32_t idx;

    rt_memset(isr_table, 0x00, sizeof(isr_table));
    for (idx = 0; idx < INTERRUPTS_MAX; idx++)
    {
        isr_table[idx].handler = rt_hw_interrupt_handler;
    }
}

/**
 * This function will mask a interrupt.
 * @param vector the interrupt number
 */
void rt_hw_interrupt_mask(int vector)
{
    if ((vector < 0) || (vector > IRQ_MAX_NR))
    {
        return;
    }
    __nds__plic_disable_interrupt(vector);
}

/**

 * This function will un-mask a interrupt.
 * @param vector the interrupt number
 */
void rt_hw_interrupt_umask(int vector)
{
    if ((vector < 0) || (vector > IRQ_MAX_NR))
    {
        return;
    }
    __nds__plic_enable_interrupt(vector);
}

/**
 * This function will install a interrupt service routine to a interrupt.
 * @param vector the interrupt number
 * @param handler the interrupt service routine to be installed
 * @param param the interrupt service function parameter
 * @param name the interrupt name
 * @return old handler
 */
rt_isr_handler_t rt_hw_interrupt_install(int vector, rt_isr_handler_t handler,
        void *param, const char *name)
{
    rt_isr_handler_t old_handler = RT_NULL;
    if ((vector < 0) || (vector > IRQ_MAX_NR))
    {
        return old_handler;
    }

    old_handler = isr_table[IRQ_OFFSET + vector].handler;

#ifdef RT_USING_INTERRUPT_INFO
    rt_strncpy(isr_table[IRQ_OFFSET + vector].name, name, RT_NAME_MAX);
#endif /* RT_USING_INTERRUPT_INFO */
    isr_table[IRQ_OFFSET + vector].handler = handler;
    isr_table[IRQ_OFFSET + vector].param = param;

    return old_handler;
}


// Interrupt handler functions entry
// const isr_func irq_handler[] =
//     {
//         default_irq_handler,    // 0
//         rtc_period_irq_handler, // 1
//         rtc_alarm_irq_handler,  // 2
//         pit_irq_handler,        // 3
//         gp0_irq_handler,        // 4
//         spi_irq_handler,        // 5
//         i2c_irq_handler,        // 6
//         gpio_irq_handler,       // 7
//         uart1_irq_handler,      // 8
//         uart2_irq_handler,      // 9
//         dma_irq_handler,        // 10
//         gp1_irq_handler,        // 11
//         gp2_irq_handler,        // 12
//         gp3_irq_handler,        // 13
//         gp4_irq_handler,        // 14
//         gp5_irq_handler,        // 15
//         gp6_irq_handler,        // 16
//         gp7_irq_handler,        // 17
//         gp8_irq_handler,        // 18
//         gp9_irq_handler,        // 19
//         gp10_irq_handler,       // 20
//         gp11_irq_handler,       // 21
//         gp12_irq_handler,       // 22
//         gp13_irq_handler,       // 23
//         gp14_irq_handler,       // 24
//         gp15_irq_handler,       // 25
//         standby_irq_handler,    // 26
//         wakeup_irq_handler,     // 27
//         default_irq_handler,    // 28
//         default_irq_handler,    // 29
//         default_irq_handler,    // 30
//         default_irq_handler     // 31
// };
