# Sample djgpp + nasm combo project

Contains a simple sample project based on [dos-dev](https://marketplace.visualstudio.com/items?itemName=badlogicgames.dos-dev) extension. Everything whould work out-of-the box, as well as debugging.

## Setup
1. Install CMake;
4. Install [Nasm](https://www.nasm.us/) (the assembler);
3. Install [Native debug](https://marketplace.visualstudio.com/items?itemName=webfreak.debug) and [Cmake Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools);
2. Install [dos-dev](https://marketplace.visualstudio.com/items?itemName=badlogicgames.dos-dev);
5. Download tools as required by the dos-dev extension (`CTRL+SHIFT+P`, `DOS: Install tools`);
6. Load the project, configure it to use the `djgpp` toolchain;
7. (optional) Read the Nasm documantation/syntax guide(-s);
8. F5 to run and debug.
9. Profit!

Notice that everything is now in 32 bit mode, procedures are all cdecl (with underscores) and C library functions should be used as much
as possible (it is easier that way). Some tutorials on the matter: [en](https://www.streetinfo.lu/computing/programming/dos/dos_nasm2.html), [ru](https://www.opennet.ru/docs/RUS/nasm/nasm_ru8.html).
