if [ -d "${ROOTPATHSH}/src/leveldb" ]; then
    echo leveldb...
    cd $ROOTPATHSH/src/leveldb
    make memenv_test TARGET_OS=OS_WINDOWS_CROSSCOMPILE \
     OPT="${ADDITIONALCCFLAGS}"
     if [ "$?"-ne 0 ]; then echo "LevelDB build failed."; read -n 1 -s; exit 1;fi
    echo
    cd ../../$EWBPATH
fi

cd $ROOTPATHSH/$EWBLIBS

echo db...
cd $BERKELEYDB
cd build_unix
../dist/configure --enable-mingw --enable-cxx --disable-shared --disable-replication \
 CXXFLAGS="${ADDITIONALCCFLAGS}" \
 CFLAGS="${ADDITIONALCCFLAGS}"
if [ ${?} -ne 0 ]; then echo "BerkeleyDB configure failed."; read -n 1 -s; exit 1;fi
sed -i 's/typedef pthread_t db_threadid_t;/typedef u_int32_t db_threadid_t;/g' db.h  # workaround, see https://bitcointalk.org/index.php?topic=45507.0
make
if [ ${?} -ne 0 ]; then echo "BerkeleyDB make failed."; read -n 1 -s; exit 1;fi
cd ..
cd ..
echo

echo  openssl...
cd $OPENSSL
export CC="gcc ${ADDITIONALCCFLAGS}"
./config no-zlib no-shared no-dso no-krb5 no-camellia no-capieng no-cast no-cms no-dtls1 no-gost no-gmp no-heartbeats \
 no-idea no-jpake no-md2 no-mdc2 no-rc5 no-rdrand no-rfc3779 no-rsax no-sctp no-seed no-sha0 no-static_engine no-whirlpool \
 no-rc2 no-rc4 no-ssl2 no-ssl3 no-asm
if [ ${?} -ne 0 ]; then echo "OpenSSL config failed."; read -n 1 -s; exit 1;fi
make
if [ ${?} -ne 0 ]; then echo "OpenSSL make failed."; read -n 1 -s; exit 1;fi
cd ..
echo

cd ../$EWBPATH