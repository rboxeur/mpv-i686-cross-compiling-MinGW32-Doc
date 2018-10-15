::

        _initdir

        git clone git://git.videolan.org/libudfread.git && cd libudfread
        
        _pkgver
        # version = 1.0.0.r31.g1316299
        # commit = 131629921cc756c38eaf3e2d6b69ba2db690b199

        sed -i '40,42s/^/\/\//' src/udfread.c && ./bootstrap
        ./configure  --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static       
        make -j$(nproc) 

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libudfread-git 1.0.0.r31.g1316299  $DESTDIR/$PREFIX/$target delete

