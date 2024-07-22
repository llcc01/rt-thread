
/* Gowin RiscV_AE350_SOC and RT-Thread Standard version */

// Includes ---------------------------------------------------------------------------------
#include <rthw.h>
#include <rtthread.h>

#include "../ae350_soc/ae350/platform.h"
#include "../ae350_soc/lib/uart.h"


// Definitions ------------------------------------------------------------------------------

/* Machine timer period */
#define MACHINE_TIMER_PERIOD 	(CPUFREQ/RT_TICK_PER_SECOND)

#if defined(RT_USING_USER_MAIN) && defined(RT_USING_HEAP)
/*
 * Please modify RT_HEAP_SIZE if you enable RT_USING_HEAP
 * the RT_HEAP_SIZE max value = (sram size - ZI size), 1024 means 1024 bytes
 */
#define RT_HEAP_SIZE (15*1024)
static rt_uint8_t rt_heap[RT_HEAP_SIZE];


rt_weak void *rt_heap_begin_get(void)
{
    return rt_heap;
}

rt_weak void *rt_heap_end_get(void)
{
    return rt_heap + RT_HEAP_SIZE;
}
#endif

void rt_os_tick_callback(void)
{
	rt_interrupt_enter();

    rt_tick_increase();

    rt_interrupt_leave();
}

#ifdef RT_USING_CONSOLE
// Initializes RT UART console
static int rt_hw_uart_init(void)
{
	// Initializes UART
	uart_init(38400);	// Baud rate is 38400

    return 0;
}
INIT_BOARD_EXPORT(rt_hw_uart_init);

// RT console output
void rt_hw_console_output(const char *str)
{
	uart_puts(str);
}

#endif	/* RT_USING_CONSOLE */

// Machine timer interrupt handler
void mtime_handler(void)
{
	/* Disable the timer interrupt to prevent re-entry */
	HAL_MTIME_DISABLE();

	/* Reset the timer to specified period */
	// [63:0]: [63:32]=[1], [31:0]=[0]
	unsigned long long mtime = (((unsigned long long)(DEV_PLMT->MTIME[1])) << 32) | (DEV_PLMT->MTIME[0]);	// [63:0]
	mtime += MACHINE_TIMER_PERIOD;
	DEV_PLMT->MTIMECMP0[0] = (unsigned int)(mtime);			// [31:0]
	DEV_PLMT->MTIMECMP0[1] = (unsigned int)(mtime >> 32);	// [63:32]

	// OS tick timer
	rt_tick_increase();

	/* Re-enable the timer interrupt. */
	HAL_MTIME_ENABLE();
}

// Setup machine timer
void setup_mtimer(void)
{
	HAL_MTIMER_INITIAL();

	unsigned long long mtime = (((unsigned long long)(DEV_PLMT->MTIME[1])) << 32) | (DEV_PLMT->MTIME[0]);	// [63:0]
	mtime += MACHINE_TIMER_PERIOD;
	DEV_PLMT->MTIMECMP0[0] = (unsigned int)(mtime);			// [31:0]
	DEV_PLMT->MTIMECMP0[1] = (unsigned int)(mtime >> 32);	// [63:32]
}

/* fixed misaligned bug for qemu */
void *__wrap_memset(void *s, int c, size_t n)
{
    return rt_memset(s, c, n);
}

/**
 * This function will initial your board.
 */
void rt_hw_board_init(void)
{
	// Initializes UART
	rt_hw_uart_init();

	rt_hw_console_output("\r\nIt's a RT-Thread Standard version demo.\r\n");
	rt_hw_console_output("\r\nInitializes RT hw board...\r\n");

    /*
     * TODO 1: OS Tick Configuration
     * Enable the hardware timer and call the rt_tick_increase function
     * periodically with the frequency RT_TICK_PER_SECOND.
     */
	/* Disable the machine timer interrupt to prevent re-entry */
	HAL_MTIME_DISABLE();

	/* Setup machine timer */
	setup_mtimer();

	/* Re-enable the machine timer interrupt. */
	HAL_MTIME_ENABLE();

	/* Enable interrupts in general to allow nested */
	HAL_MIE_ENABLE();

    /* Call components board initial (use INIT_BOARD_EXPORT()) */
#ifdef RT_USING_COMPONENTS_INIT
    rt_components_board_init();
#endif

#if defined(RT_USING_USER_MAIN) && defined(RT_USING_HEAP)
    rt_system_heap_init(rt_heap_begin_get(), rt_heap_end_get());
#endif

#ifdef RT_USING_CONSOLE
    rt_console_set_device(RT_CONSOLE_DEVICE_NAME);
#endif
}
