::

        _initdir 

        wget https://github.com/dlfcn-win32/dlfcn-win32/archive/v1.1.2.tar.gz -O - | tar xvzf - && cd dlfcn-win32-1.1.2/
        ./configure --prefix=$PREFIX/$target/ --libdir=$PREFIX/$target/lib --incdir=$PREFIX/$target/include --disable-shared --enable-static --cross-prefix=$target-
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself dlfcn 1.1.2 $DESTDIR/$PREFIX/$target delete

