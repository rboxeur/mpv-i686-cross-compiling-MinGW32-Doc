::

        _initdir

        git clone https://code.videolan.org/videolan/libdvdnav.git && cd libdvdnav 
        
        _pkgver
        # version = 6.0.0.r0.gdcb9109
        # commit = dcb9109e45ccd304ec82a7c7bf46cca63620adf9

        autoreconf -fiv
        ./configure --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --with-sysroot=$PREFIX  
        make -j$(nproc)

        _prepare_package 
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libdvdnav-git 6.0.0.r0.gdcb9109 $DESTDIR/$PREFIX/$target delete

