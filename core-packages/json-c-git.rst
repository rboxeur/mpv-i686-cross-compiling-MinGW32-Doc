::

        _initdir

        git clone git://github.com/json-c/json-c.git && cd json-c       
        
        _pkgver
        # version = r747.994e6c1
        # commit = 994e6c1f6030a052429c50a917a3991c5e2e7646

        ./autogen.sh --prefix=$PREFIX/$target --host=$target --enable-shared=no --enable-static=yes --with-sysroot=$PREFIX 
        make -j$(nproc)
        
        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself json-c-git r747.994e6c1 $DESTDIR/$PREFIX/$target delete

