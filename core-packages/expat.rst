::

        _initdir

        wget https://github.com/libexpat/libexpat/releases/download/R_2_2_6/expat-2.2.6.tar.bz2 -O - |tar xvjf - && cd expat-2.2.6/
        mingw-w64-cmake . -DBUILD_tests:bool=off -DBUILD_examples:bool=off -DBUILD_tools:bool=off -DBUILD_shared:bool=off
        make -j$(nproc) 

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself expat 2.2.6 $DESTDIR/$PREFIX/$target delete

