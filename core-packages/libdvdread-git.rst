::

        _initdir

        git clone https://code.videolan.org/videolan/libdvdread.git && cd libdvdread
        
        _pkgver
        # version = 6.0.0.r0.g95fdbe8
        # commit = 95fdbe8337d2ff31dcfb68f35f3e4441dc27d92f

        autoreconf -fiv
        ./configure --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --disable-apidoc --with-libdvdcss --enable-dlfcn
        make -j$(nproc)

        _prepare_package 
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libdvdread-git 6.0.0.r0.g95fdbe8 $DESTDIR/$PREFIX/$target delete

