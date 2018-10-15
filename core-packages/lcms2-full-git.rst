::

        _initdir

        cd Little-CMS # Make sure to use the same version while building the minimalist package
        git clean -xdf
        mkdir build-$target && cd build-$target
        LIBS="-llzma -ljbig -ljpeg" ../configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --enable-silent-rules --with-sysroot=$PREFIX
        make -j$(nproc) 

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself lcms2-full-git 2.9.r24.g32f0c45 $DESTDIR/$PREFIX/$target delete

