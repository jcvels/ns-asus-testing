::  WIFI TEST Script
::  Release: 1.1
::  Date: 23/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\BATTERY
set PASS=test_passed.log
set LOG=on_test.log

:: TESTING PROCCESS

    cd %TOOLDIR%

    batteryTestValidate.exe

    if not EXIST %PASS% (
        goto FAIL
    )

    cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (battery_test.cmd)
goto END

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F