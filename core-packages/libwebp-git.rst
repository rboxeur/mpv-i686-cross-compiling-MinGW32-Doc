::

        _initdir

        git clone https://chromium.googlesource.com/webm/libwebp && cd libwebp

        _pkgver
        # version = 1.0.0.r76.gef1094b
        # commit = ef1094b0fef9fd8492e19e00979e560105f7d20e

        autoreconf -fiv
        ac_cv_path_LIBPNG_CONFIG="${PREFIX}/bin/libpng16-config --static" LIBS="-llzma -ljbig -ljpeg" ./configure --host=$target  --prefix=$PREFIX/$target/  \
        --disable-shared --enable-static --with-sysroot=$PREFIX --enable-silent-rules --enable-swap-16bit-csp --enable-tiff --enable-libwebpmux --enable-libwebpdemux --enable-libwebpdecoder
        make -j$(nproc)

        _prepare_package
        cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
        mingw-w64-makeself libwebp-git 1.0.0.r76.gef1094b $DESTDIR/$PREFIX/$target delete

