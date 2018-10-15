::

        _initdir

        git clone git://anongit.freedesktop.org/fontconfig && cd fontconfig
        git checkout fc-2-12 

        _pkgver
        # version = 2.12.6.r5.g665584a
        # commit = 665584a19b0ec227c93643ffb0540d11ac8ecf7f
        
        autoreconf -fiv
        sed -i 's/cross_compiling=no/cross_compiling=yes/g' configure
        PKG_CONFIG="${PREFIX}/bin/${target}-pkg-config --static"   ./configure --prefix=$PREFIX/$target --host=$target --enable-shared=no --enable-static=yes 
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself fontconfig-git 2.12.6.r5.g665584a $DESTDIR/$PREFIX/$target delete    

