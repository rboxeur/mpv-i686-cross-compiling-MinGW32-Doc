::

        _initdir

        wget https://src.fedoraproject.org/lookaside/pkgs/bzip2/bzip2-1.0.6.tar.gz/00b516f4704d4a7cb50a1d97e6e8e15b/bzip2-1.0.6.tar.gz -O - | tar xvzf - && cd bzip2-1.0.6/
        git clone https://aur.archlinux.org/mingw-w64-bzip2.git && cd mingw-w64-bzip2 && git checkout 85d025dd80aef7dd360ef7cd02ef8222aaf773ab && cd $SRCDIR/bzip2-1.0.6/
        patch -p1 -i ${SRCDIR}/mingw-w64-bzip2/bzip2-1.0.5-autoconfiscated.patch 
        patch -p1 -i ${SRCDIR}/mingw-w64-bzip2/bzip2-use-cdecl-calling-convention.patch
        patch -p1 -i ${SRCDIR}/mingw-w64-bzip2/mingw32-bzip2-1.0.5-slash.patch 
        sh autogen.sh 
        ./configure --host=$target --prefix=$PREFIX/$target --enable-static --disable-shared --with-sysroot=$PREFIX
        make -j4

        _prepare_package
        rm -rf $DESTDIR/$PREFIX/$target/bin/*
        cp -avf $DESTDIR//$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself bzip2 1.0.6 $DESTDIR/$PREFIX/$target delete

