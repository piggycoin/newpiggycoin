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

cd ../$EWBPATH
