#include "uart.hpp"

void uart_init()
{
}

void uart_putc( char c )
{
    uart_putc_impl( c );
}

void uart_puts( const char* str )
{
    while( *str ) {
        uart_putc( *str++ );
    }
}
