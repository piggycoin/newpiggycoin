cd src/leveldb
chmod +x build_detect_platform
make libleveldb.a libmemenv.a
cd..
make obj
cd obj
make zerocoin
make -f makefile.unix USE_UPNP=-
