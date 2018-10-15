::

        _initdir

        git clone -b LIBGCRYPT-1.8-BRANCH git://git.gnupg.org/libgcrypt.git && cd libgcrypt

        _pkgver
        # version = libgcrypt.1.8.3.r2.g20c0348
        # commit = 20c034865f2dd15ce2871385b6e29c15d1570539

        wget https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-support/libgcrypt/files/0001-Add-and-use-pkg-config-for-libgcrypt-instead-of-conf.patch -O - | patch -p1
        autoreconf -fiv
        ./configure --host=$target --prefix=$PREFIX/$target/ --disable-shared --enable-static --with-sysroot=$PREFIX --disable-doc \
                --datarootdir=$PREFIX/$target/share/libgcrypt --with-gpg-error-prefix=$PREFIX/ --enable-asm --build=i686-pc-linux-gnu 
        make -j$(nproc)

        _prepare_package
        mkdir -pv $DESTDIR/$PREFIX/$target/lib/pkgconfig
        cp -vf src/libgcrypt.pc $DESTDIR/$PREFIX/$target/lib/pkgconfig
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        ln -s $PREFIX/$target/bin/libgcrypt-config $PREFIX/bin/libgcrypt-config
        mingw-w64-makeself libgcrypt-git 1.8.3.r2.g20c0348 $DESTDIR/$PREFIX/$target delete

