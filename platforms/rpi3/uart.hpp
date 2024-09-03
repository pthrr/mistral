#pragma once

#define UART_BASE 0x3F201000 // UART0

volatile unsigned int* const UART0DR = (unsigned int*)UART_BASE;

void uart_putc_impl( char );
