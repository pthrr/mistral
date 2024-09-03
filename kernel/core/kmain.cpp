#include "kmain.hpp"

void kmain()
{
    uart_init();
    uart_puts( "Hello, world!\n" );

    for( ;; ) {
    };
}
