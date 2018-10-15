::

        _initdir

        git clone git://github.com/libjpeg-turbo/libjpeg-turbo && cd libjpeg-turbo

        _pkgver
        # version = 2.0.0.r11.g504a295
        # commit = 504a295cde32ac42625f47d0804e0ca9e55677ce

        mkdir build-$target && cd build-$target
        mingw-w64-cmake  .. -DENABLE_SHARED:bool=off -DWITH_12BIT:bool=on -DCMAKE_SYSTEM_PROCESSOR="i686"
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libjpeg-turbo-git 2.0.0.r11.g504a295 $DESTDIR/$PREFIX/$target delete

