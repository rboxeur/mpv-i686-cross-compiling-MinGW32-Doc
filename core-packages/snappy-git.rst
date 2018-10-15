::

        _initdir

        git clone git://github.com/google/snappy.git && cd snappy

        _pkgver
        # version = 1.1.7.r15.gea660b5
        # commit = ea660b57d65d68d521287c903459b6dd3b2804d0
        
        mkdir build-$target && cd build-$target
        mingw-w64-cmake .. -DBUILD_SHARED_LIBS=OFF -DSNAPPY_BUILD_TESTS:bool=OFF  -DCMAKE_SYSROOT=$PREFIX
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself snappy-git 1.1.7.r15.gea660b5 $DESTDIR/$PREFIX/$target delete

