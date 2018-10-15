::

        _initdir

        git clone git://git.videolan.org/libbdplus.git  && cd libbdplus

        _pkgver
        # version = 0.1.2.r31.gc7f1e8b
        # commit = c7f1e8bbb22853ffef1feadb100845ae3ad4d562

        ./bootstrap
        LDFLAGS="-Wl,--allow-multiple-definition" ./configure  --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --with-libaacs 
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libbdplus-git 0.1.2.r31.gc7f1e8b $DESTDIR/$PREFIX/$target delete     

