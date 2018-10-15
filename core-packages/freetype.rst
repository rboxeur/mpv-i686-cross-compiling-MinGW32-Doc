::

        _initdir

        git clone https://aur.archlinux.org/mingw-w64-freetype2-bootstrap.git && cd mingw-w64-freetype2-bootstrap && git checkout e4d84453385594c1c0e5cde5286fa4edecf57e69 && cd ${SRCDIR}
        wget http://download.savannah.gnu.org/releases/freetype/freetype-2.9.1.tar.gz -O - | tar -xzvf - && cd freetype-2.9.1
        patch -p1 -i $SRCDIR/mingw-w64-freetype2-bootstrap/0001-Enable-table-validation-modules.patch
        patch -p1 -i $SRCDIR/mingw-w64-freetype2-bootstrap/0002-Enable-infinality-subpixel-hinting.patch
        patch -p1 -i $SRCDIR/mingw-w64-freetype2-bootstrap/0003-Enable-long-PCF-family-names.patch
        
        ./configure --host=$target  --prefix=$PREFIX/$target/  --disable-shared --enable-static --with-sysroot=$PREFIX
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself freetype 2.9.1 $DESTDIR/$PREFIX/$target delete

