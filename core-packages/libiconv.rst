::

        _initdir

        wget http://ftp.gnu.org/pub/gnu/libiconv/libiconv-1.15.tar.gz -O - | tar -xzvf - && cd libiconv-1.15
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --enable-silent-rules --with-sysroot=$PREFIX
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libiconv 1.15 $DESTDIR/$PREFIX/$target delete        

