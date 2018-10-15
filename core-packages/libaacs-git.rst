::

        _initdir

        git clone git://git.videolan.org/libaacs.git && cd libaacs

        _pkgver
        # version = 0.9.0.r19.gf263376
        # commit = f263376b1e6570556031f420b9df08373e346d76

        autoreconf -fiv
        ./configure  --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libaacs-git 0.9.0.r19.gf263376 $DESTDIR/$PREFIX/$target delete

