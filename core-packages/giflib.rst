::

        _initdir

        wget http://downloads.sourceforge.net/project/giflib/giflib-5.1.4.tar.bz2 -O - | tar -xjvf - && cd giflib-5.1.4
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --with-sysroot=$PREFIX  
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself giflib 5.1.4 $DESTDIR/$PREFIX/$target delete

