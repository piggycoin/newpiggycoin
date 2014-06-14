cd src/leveldb
chmod +x build_detect_platform
make libleveldb.a libmemenv.a
cd..
make -f makefile.unix USE_UPNP=-