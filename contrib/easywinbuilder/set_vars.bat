@set MINGWPATH=C:\mingw-w64\i686-4.8.2-posix-dwarf-rt_v3-rev4\mingw32

@set QTPATH=C:\Qt\5.3.2-gcc482-static\qtbase\bin
@rem set QTPATH=C:\Qt\5.3.2\qtbase\bin
@set QTDOWNLOADPATH=http://download.qt.io/archive/qt/5.3/5.3.2/qt-opensource-windows-x86-mingw482_opengl-5.3.2.exe
@rem Qt5 will need changes in gather_dlls.bat

@set BOOST=boost_1_57_0
@set BOOSTVERSION=1.57.0
@set BOOSTSUFFIX=-mgw48-mt-s-1_57
@set BERKELEYDB=db-4.8.30.NC
@set MINIUPNPC=miniupnpc-1.9
@set OPENSSL=openssl-1.0.1j

@set LANG=en_US.UTF8
@set LC_ALL=en_US.UTF8

@set EWBLIBS=libs

@set PATH=%MINGWPATH%\msys\1.0\bin;%MINGWPATH%\bin

@set EWBPATH=contrib/easywinbuilder
@set ROOTPATH=..\..
@set ROOTPATHSH=%ROOTPATH:\=/%

@rem bootstrap coin name
@for /F %%a in ('dir /b %ROOTPATH%\*.pro') do @set COINNAME=%%a
@set COINNAME=%COINNAME:-qt.pro=%

@set MSYS=%MINGWPATH:\=/%/msys/1.0/bin
@set PERL=%MSYS%/perl.exe

@rem set MAKEDIRECTIVES=-j

@rem the following will be set as additional CXXFLAGS and CFLAGS for everything - no ' or ", space is ok
@set ADDITIONALCCFLAGS=-static -static-libgcc -static-libstdc++ -fno-guess-branch-probability -frandom-seed=2015 -Wno-unused-variable -Wno-unused-value -Wno-sign-compare -Wno-strict-aliasing

@rem Note: Variables set here can NOT be overwritten in makefiles