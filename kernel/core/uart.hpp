#pragma once

#if MISTRAL_PLATFORM == RPI3
#include "../../platforms/rpi3/uart.hpp"
#endif

void uart_init();
void uart_putc( char );
void uart_puts( const char* );
