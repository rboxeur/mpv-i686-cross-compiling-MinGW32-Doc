::

        _initdir

        wget http://zlib.net/zlib-1.2.11.tar.gz -O - | tar xvzf - && cd zlib-1.2.11
        wget "https://raw.githubusercontent.com/lachs0r/mingw-w64-cmake/master/packages/zlib-1-win32-static.patch" -O - |patch -p1
        CFLAGS="$CFLAGS" CC=$CC AR=$AR RANLIB=$RANLIB ./configure --prefix=$PREFIX/$target --static
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target
        mingw-w64-makeself zlib 1.2.11 $DESTDIR/$PREFIX/$target delete

