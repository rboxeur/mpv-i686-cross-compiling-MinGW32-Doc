::

        _initdir
        
        git clone git://git.code.sf.net/p/libpng/code libpng && cd libpng
        
        _pkgver
        # version = libpng.1.6.29.master.signed.r5.g7292c86
        # commit = 7292c861b165ae4279267083e273aa31b7e42004

        sed -i 's/ASM C/C ASM/' CMakeLists.txt 
        mkdir build-$target && cd build-$target
        mingw-w64-cmake .. -DPNG_SHARED:bool=off -DPNG_TESTS:bool=off
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        ln -s $PREFIX/$target/bin/libpng-config $PREFIX/bin/ # Adding a symbolic link to the main MinGW prefix
        ln -s $PREFIX/$target/bin/libpng16-config $PREFIX/bin/ # Adding a symbolic link to the main MinGW prefix
        mingw-w64-makeself libpng-git 1.6.29-r5.g7292c86 $DESTDIR/$PREFIX/$target delete

