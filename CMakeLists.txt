cmake_minimum_required(VERSION 3.20)
project(dos-app LANGUAGES C CXX)

set(CMAKE_ASM_NASM_OBJECT_FORMAT coff)
enable_language(ASM_NASM)

set(CMAKE_GENERATOR Ninja)
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)
add_compile_options(-Wall -Wno-reloc -std=gnu99 -save-temps)

file(GLOB sources CONFIGURE_DEPENDS
    "src/*.c" "src/**/*.c"
    "src/*.cpp" "src/**/*.cpp"
    "src/*.h" "src/**/*.h"
    "src/*.asm" "src/**/*.asm"
)

add_executable(main ${sources})

add_custom_target(assets
    COMMAND ${CMAKE_COMMAND} -E copy_directory
    ${CMAKE_CURRENT_SOURCE_DIR}/assets
    ${CMAKE_BINARY_DIR}/assets
)
add_dependencies(main assets)
