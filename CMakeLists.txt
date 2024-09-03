cmake_minimum_required(VERSION 3.10)

project(mistral LANGUAGES C CXX ASM)

include(${CMAKE_SOURCE_DIR}/cmake/settings.cmake)

set(KERNEL_SOURCES
    kernel/core/kmain.cpp
    kernel/core/kmain.hpp
    kernel/core/uart.hpp
    kernel/core/uart.cpp
)

if(MISTRAL_PLATFORM STREQUAL "RPI3")
    set(KERNEL_SOURCES
        ${KERNEL_SOURCES}
        arch/aarch64/start.S
        platforms/rpi3/bmain.cpp
        platforms/rpi3/uart.cpp
        platforms/rpi3/uart.hpp
    )
    add_executable(kernel8.elf ${KERNEL_SOURCES})
    add_custom_command(TARGET kernel8.elf POST_BUILD
        COMMAND ${CMAKE_OBJCOPY} -O binary kernel8.elf kernel8.img
        DEPENDS kernel8.elf
        COMMENT "Generating kernel8.img binary image"
    )
endif()
