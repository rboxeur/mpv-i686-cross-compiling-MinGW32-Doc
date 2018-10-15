::

        _initdir

        git clone git://anongit.freedesktop.org/uchardet/uchardet.git && cd uchardet

        _pkgver
        # version = 0.0.6.r58.gbdfd611
        # commit = bdfd6116a965fd210ef563613763e724424728b7

        sed -i '74s/^/#/' CMakeLists.txt
        mkdir build-$target && cd build-$target
        mingw-w64-cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_SYSTEM_PROCESSOR="i686" -DBUILD_SHARED_LIBS=OFF
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself uchardet-git 0.0.6.r58.gbdfd611 $DESTDIR/$PREFIX/$target delete 

