About
=====

This repository contains my own documentation to cross-compil MPV Player
(<https://mpv.io/>) on Linux 32Bits using

-   GCC 7.2.0
-   MinGW-w64 5.0.4 (with patches for MPV and some packages)
-   Bin-utils 2.29.1

I tried to follow steps from https://github.com/qyot27/mpv/blob/extra-new/DOCS/crosscompile-mingw-tedious.txt by adding additional packages (crossc, shaderc, angleproject, vulkan-sdk ...)

Cross-compiling is done a pure native Linux 32 Bits machine

-   Kernel: 4.8.17
-   CPU: Intel Core i5-4430 CPU @ 3.2GHz
-   GPU: AMD/ATI Hawaii XT [Radeon R9 290X]
-   RAM: 1087MB / 8024MB

Release
=======
You can download some builds for MPV (see releases section).
They were tested on
- Linux 32-Bits: using Wine-Staging-PBA >= 3.16
- Windows 64-Bits

Content
=======

- `index.rst` is the main file of this repository
- `Makefile` helps to convert `index.rst` to `index.html`
- `*.png` images for documentation

Regards.

