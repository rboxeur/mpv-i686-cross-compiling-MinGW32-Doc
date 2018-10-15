::

 _initdir

 git clone git://github.com/LuaDist/lua.git && cd lua && git checkout lua-5.2
        
 _pkgver
 # version = 5.2.4.r0.g9864851
 # commit = 98648514bf7c15d12ccb56222a85e06bfcf9317f

 LUAPACKVER=$(grep version dist.info | cut -f2 -d "\"")
 mkdir build-$target && cd build-$target
 mingw-w64-cmake .. -DCMAKE_RC_FLAGS="-F pe-i386" -DBUILD_SHARED_LIBS:bool=off
 make -j$(nproc)

 _prepare_package
        
 mkdir $DESTDIR/$PREFIX/$target/lib/pkgconfig/

 cat << _EOF_ > $DESTDIR/$PREFIX/$target/lib/pkgconfig/lua.pc
 prefix=${PREFIX}/${target}
 exec_prefix=\${prefix}
 libdir=\${exec_prefix}/lib
 includedir=\${prefix}/include

 Name: lua
 Description: Lua scripting language
 Version: ${LUAPACKVER}
 Libs: -L\${libdir} -llua
 Cflags: -I\${includedir}
 _EOF_

 cp -avf $DESTDIR/$PREFIX/$target/* $PREFIX/$target/
 mingw-w64-makeself lua-git 5.2.4.r0.g9864851 $DESTDIR/$PREFIX/$target delete 

