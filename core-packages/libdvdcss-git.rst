::

        _initdir

        git clone https://code.videolan.org/videolan/libdvdcss.git  && cd libdvdcss

        _pkgver
        # version = 1.4.2.r0.g7b7c185
        # commit = 7b7c185704567398627ad0f9a0d948a63514394b

        autoreconf -fiv 
        ./configure --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --disable-doc
        make -j$(nproc)

        _prepare_package        
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libdvdcss-git 1.4.2.r0.g7b7c185 $DESTDIR/$PREFIX/$target delete

