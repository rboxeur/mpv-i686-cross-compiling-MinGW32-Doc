::

        _initdir
        
        git clone git://github.com/nijel/enca.git && cd enca

        _pkgver
        # version = 1.19.r10.gebcbd60
        # commit = ebcbd6001a332f7294346de99afe69529839dc6e

        sed -i -e 's/encodings.dat make_hash/encodings.dat make_hash$(EXEEXT)/' -e 's/\.\/make_hash/\.\/make_hash$(EXEEXT)/' tools/Makefile.in
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --enable-silent-rules --with-sysroot=$PREFIX
        make -j$(nproc) && rm -vf enca.spec

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself enca-git 1.19.r10.gebcbd60  $DESTDIR/$PREFIX/$target delete

