::

        _initdir

        wget https://github.com/uclouvain/openjpeg/archive/v2.3.0.tar.gz -O - | tar -xzvf - && cd openjpeg-2.3.0/
        mkdir build-$target && cd build-$target
        mingw-w64-cmake .. -DBUILD_SHARED_LIBS:bool=off -DBUILD_MJ2:bool=on -DBUILD_JPWL:bool=on  -DBUILD_THIRDPARTY:bool=on -DBUILD_PKGCONFIG_FILES:bool=on
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself openjpeg 2.3.0 $DESTDIR/$PREFIX/$target delete

