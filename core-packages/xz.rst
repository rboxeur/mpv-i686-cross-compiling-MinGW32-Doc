:: 

        _initdir

        wget --no-check-certificate http://tukaani.org/xz/xz-5.2.4.tar.gz -O - | tar xvzf - && cd xz-5.2.4/
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --disable-nls --enable-silent-rules
        make -j$(nproc) 

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself xz 5.2.4 $DESTDIR/$PREFIX/$target delete

