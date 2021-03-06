Documentation: A Prebuilt Toolchain to Cross-Compil MPV Player using MinGW-w64 on Linux 32 Bits
================================================================================================

This repository contains my own documentation to cross-compil MPV Player
(<https://mpv.io/>) on Linux 32Bits (`i686-w64-mingw32-gcc/g++`) using

-   GCC 7.2.0
-   MinGW-w64 5.0.4 (with patches for MPV and some packages)
-   Bin-utils 2.29.1

I tried to follow steps from https://github.com/qyot27/mpv/blob/extra-new/DOCS/crosscompile-mingw-tedious.txt by adding additional packages (crossc, shaderc, angleproject, vulkan-sdk ...)

MinGW-w64 Toolchain is built on  a pure native Linux 32 Bits machine

-   OS: Ubuntu 14.10 (32 Bits)
-   Kernel: 4.8.17
-   CPU: Intel Core i5-4430 CPU @ 3.2GHz
-   GPU: AMD/ATI Hawaii XT [Radeon R9 290X]
-   RAM: 1087MB / 8024MB

Release: MPV Binairies for Windows 32 Bits
===========================================
You can download some builds for win32 for MPV (see releases section).
They were tested on
- Linux 32-Bits: using Wine-Staging-PBA >= 3.16
- Windows 7 32-Bits: HP 350 G2 - CPU = 3805U (https://www.fnac.com/mp24376719/HP-350-G2-15-6-Pentium-3805U-4-Go-RAM-500-Go-HDD/w-4)
- Windows XP is not supported.

Content
=======

- `index.rst` is the main file of this repository
- `Makefile` helps to convert `index.rst` to `index.html`
- `*.png` images for documentation

Regards.

