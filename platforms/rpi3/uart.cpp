#include "uart.hpp"

void uart_putc_impl( char c )
{
    *UART0DR = c;
}
