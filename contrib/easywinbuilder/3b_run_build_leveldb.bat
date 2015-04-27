@call set_vars.bat
@rxvt -e ./build_leveldb.sh
@if not "%RUNALL%"=="1" pause