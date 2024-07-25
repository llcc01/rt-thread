/*
 * ******************************************************************************************
 * File		: uart.c
 * Author	: GowinSemicoductor
 * Chip		: AE350_SOC
 * Function	: UART predefine
 * ******************************************************************************************
 */

// Includes ---------------------------------------------------------------------------------
#include "ae350_soc/lib/uart.h"
#include "ae350_soc/ae350/platform.h"
#include "ae350.h"
#include "ae350_soc/driver/ae350/uart_ae350.h"
#include <rtthread.h>


// Definitions ------------------------------------------------------------------------------

// Baud rate computed
#define BAUD_RATE(n)            ((UCLKFREQ + 8 * (n)) / (16 * (n)))

// Initializes UART
void uart_init(UART_RegDef * uart_base, unsigned int baudrate)
{
	/* Set DLAB to 1 */
	uart_base->LCR |= 0x80;

	/* Set DLL for baud rate */
	uart_base->DLL = (BAUD_RATE(baudrate) >> 0) & 0xff;
	uart_base->DLM = (BAUD_RATE(baudrate) >> 8) & 0xff;

	/* LCR: length 8, no parity, 1 stop bit. */
	uart_base->LCR = 0x03;

	/* FCR: enable FIFO, reset TX and RX. */
	uart_base->FCR = 0x07;
}

// Input a character by UART
int uart_getc(UART_RegDef * uart_base)
{
	#define SERIAL_LSR_RDR 0x01

	while ((uart_base->LSR & SERIAL_LSR_RDR) == 0);

	return uart_base->RBR;
}

// Print a character by UART
void uart_putc(UART_RegDef * uart_base, int c)
{
	#define SERIAL_LSR_THRE 0x20

	while ((uart_base->LSR & SERIAL_LSR_THRE) == 0);

	uart_base->THR = c;
}

// Print a string by UART
int uart_puts(UART_RegDef * uart_base, const char *s)
{
	int len = 0;

	while (*s)
	{
		uart_putc(uart_base, *s);

		if (*s == '\n')
		{
			uart_putc(uart_base, '\r');
		}

		s++;
		len++;
	}

	return len;
}

// Overwrite function for printf()
int outbyte(int c)
{
	uart_putc(AE350_UART1, c);

	if (c =='\n')
	{
		uart_putc(AE350_UART1, '\r');
	}

	return c;
}

void uart_set_interrupt(UART_RegDef * uart_base, unsigned int enable)
{
	if (enable)
	{
		uart_base->IER |= UARTC_IER_RDR;
	}
	else
	{
		uart_base->IER = 0x00;
	}
}
