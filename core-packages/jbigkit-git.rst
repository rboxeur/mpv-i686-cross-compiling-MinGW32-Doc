::

        _initdir

        git clone git://github.com/qyot27/jbigkit.git && cd jbigkit

        _pkgver
        # version = 2.1.r16.g2281149
        # commit = 2281149c0b8f156c5dcdfa76d9077d4362ccb9a8

        git checkout mingw-w64
        autoreconf -fiv

        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --with-sysroot=$PREFIX --enable-silent-rules
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself jbigkit-git 2.1.r16.g2281149 $DESTDIR/$PREFIX/$target delete

