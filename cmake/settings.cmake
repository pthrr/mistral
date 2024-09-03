add_compile_options(-ffreestanding -nostdlib -nostartfiles -O2)
add_compile_options(-Wall -Wextra -pedantic)
add_compile_options($<$<COMPILE_LANGUAGE:CXX>:-fno-rtti> $<$<COMPILE_LANGUAGE:CXX>:-fno-exceptions>)

string(TOLOWER ${MISTRAL_PLATFORM} MISTRAL_PLATFORM_LOWER)

add_link_options(-T ${CMAKE_SOURCE_DIR}/platforms/${MISTRAL_PLATFORM_LOWER}/linker.ld)
add_link_options(-nostdlib -nostartfiles -static)
