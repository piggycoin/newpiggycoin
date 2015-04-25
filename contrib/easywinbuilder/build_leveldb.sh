if [ -d "${ROOTPATHSH}/src/leveldb" ]; then
    echo leveldb...
    cd $ROOTPATHSH/src/leveldb
    make memenv_test TARGET_OS=OS_WINDOWS_CROSSCOMPILE \
     OPT="${ADDITIONALCCFLAGS}"
     if [ "$?"-ne 0 ]; then echo "LevelDB build failed."; read -n 1 -s; exit 1;fi
    echo
    cd ../../$EWBPATH
fi

cd ../$EWBPATH
