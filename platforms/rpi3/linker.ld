ENTRY(_start)

SECTIONS
{
    . = 0x80000;

    __start = .;

    __text_start = .;
    .text : {
        *(.text.boot)
        *(.text*)
    }
    __text_end = .;

    .rodata : {
        *(.rodata*)
    }

    .data : {
        *(.data*)
    }

    __bss_start = .;
    .bss : {
        *(.bss*)
    }
    __bss_end = .;

    _end = .;

    /DISCARD/ : { *(.note.*) *(.comment) }
}

__bss_size = (__bss_end - __bss_start)>>3;
