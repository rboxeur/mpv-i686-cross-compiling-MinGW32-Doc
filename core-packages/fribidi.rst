::

        _initdir

        wget https://github.com/fribidi/fribidi/releases/download/v1.0.5/fribidi-1.0.5.tar.bz2 -O - | tar xvjf - && cd fribidi-1.0.5
        ./autogen.sh --prefix=$PREFIX/$target --host=$target --enable-shared=no --enable-static=yes --with-sysroot=$PREFIX --disable-deprecated --disable-debug
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself fribidi 1.0.5 $DESTDIR/$PREFIX/$target delete

