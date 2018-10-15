::

        _initdir

        git clone https://gitlab.com/libtiff/libtiff.git && cd libtiff

        _pkgver
        # version = Release.v4.0.9.r106.gd438fab
        # commit = d438fab328c0e6180f27610df532340a73694023

        autoreconf -fvi
        #mkdir build-$target && cd build-$target
        #mingw-w64-cmake .. -DBUILD_SHARED_LIBS:bool=off
        ./configure  --host=$target  --prefix=$PREFIX/$target/ --enable-cxx --enable-static --disable-shared
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libtiff-git 4.0.9.r106.gd438fab $DESTDIR/$PREFIX/$target delete

