@call set_vars.bat
@rxvt -e ./build_openssl.sh
@if not "%RUNALL%"=="1" pause