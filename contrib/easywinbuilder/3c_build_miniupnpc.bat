@call set_vars.bat
@bash patch_files.sh
@cd %ROOTPATH%\%EWBLIBS%\
@echo miniupnp...
@cd %MINIUPNPC%
@rem mingw32-make is different from normal msys make
mingw32-make -f Makefile.mingw init upnpc-static ADDITIONALCCFLAGS="%ADDITIONALCCFLAGS%"
@mkdir miniupnpc
@copy *.h miniupnpc
@cd ..\..\%EWBPATH%
@if not "%RUNALL%"=="1" pause