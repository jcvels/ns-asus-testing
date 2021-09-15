::  WIFI TEST Script
::  Release: 1.1
::  Date: 15/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set TOOL=%CD%\WIFI\TOOLS\wifiConnectAndCheck.exe
set TOOLDIR=%CD%\WIFI\TOOLS
set PASS=%CD%\WIFI\TOOLS\test_passed.log
set LOG=%CD%\WIFI\wifi_test.log

:: TESTING PROCCESS

    :: run wifi test tool
    cd %TOOLDIR%
    %TOOL%

    :: check wifi test results
    if not EXIST %PASS% (
        goto FAIL
    )

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (wireless_test.cmd)
goto END

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
