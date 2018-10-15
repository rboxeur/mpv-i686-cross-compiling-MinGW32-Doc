::

        _initdir

        wget http://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz -O - | tar xvzf - && cd lzo-2.10/
        make distclean # to clean up sources
        mkdir build && cd build
        ../configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static
        make -j$(nproc) 

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself lzo 2.10 $DESTDIR/$PREFIX/$target delete

