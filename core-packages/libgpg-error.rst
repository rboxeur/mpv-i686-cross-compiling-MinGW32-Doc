::

        _initdir

        # I had to add '--build=i686-pc-linux-gnu' else we met an issue while building
        wget "ftp://ftp.gnupg.org/gcrypt/libgpg-error/libgpg-error-1.31.tar.bz2" -O - | tar -xjvf - && cd libgpg-error-1.31
        ./configure --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --with-sysroot=$PREFIX \
                --program-prefix=${target}- --disable-nls --disable-rpath \
                --enable-silent-rules --disable-doc --disable-tests --build=i686-pc-linux-gnu   
        make -j$(nproc)

        _prepare_package 
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        ln -s $PREFIX/$target/bin/${target}-gpg-error-config $PREFIX/bin/gpg-error-config # Added symbolic link to MinGW main prefix
        ln -s $PREFIX/$target/bin/${target}-gpgrt-config $PREFIX/bin/gpgrt-config # Added symbolic link to MinGW main prefix
        mingw-w64-makeself libgpg-error 1.31 $DESTDIR/$PREFIX/$target delete

