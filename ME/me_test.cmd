::  WIFI TEST Script
::  Release: 1.0
::  Date: 22/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\ME\
set TEMP=on_test.tmp
set LOG=on_test.log

:: TESTING PROCCESS

    cd %TOOLDIR%

    del %TEMP% >> %LOG%

    FPTW64.exe -closemnf -y > %TEMP%
    find /C "FPT Operation Successful." %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )

    MEManufWin64.exe -eol > %TEMP%
    find /C "MEManuf Operation Passed" %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )

    cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (me_test.cmd)
goto END

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
