/*
 * ******************************************************************************************
 * File		: uart.h
 * Author	: GowinSemicoductor
 * Chip		: AE350_SOC
 * Function	: UART predefine
 * ******************************************************************************************
 */

#ifndef __UART_H__
#define __UART_H__

#include <rtthread.h>
#include "ae350.h"

// Definitions -------------------------------------------------------------------------------

// #define UART1_USED_IN_PRINTF  0		// UART1 used in printf(); otherwise UART2


// Declarations ------------------------------------------------------------------------------

extern void uart_init(UART_RegDef * uart_base, unsigned int baudrate);		// Initializes UART
extern int uart_getc(UART_RegDef * uart_base);							// Input a character by UART
extern void uart_putc(UART_RegDef * uart_base, int c);						// Print a character by UART
extern int uart_puts(UART_RegDef * uart_base, const char *s);				// Print a string by UART
extern int outbyte(int c);							// Overwrite function for printf()
extern void uart_set_interrupt(UART_RegDef * uart_base, unsigned int enable);	// Enable/Disable UART interrupt

#endif	/* __UART_H__ */
