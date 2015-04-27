cd $ROOTPATHSH/$EWBLIBS

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
