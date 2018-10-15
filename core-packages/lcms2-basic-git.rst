::

        _initdir

        git clone git://github.com/mm2/Little-CMS.git && cd Little-CMS

        _pkgver
        # version = lcms2.9.r24.g32f0c45
        # commit = 32f0c458c910a033375c57b46d7a3c1c606e6cbc
        
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static  --without-jpeg --without-tiff --enable-silent-rules
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself lcms2-basic-git 2.9.r24.g32f0c45 $DESTDIR/$PREFIX/$target delete

