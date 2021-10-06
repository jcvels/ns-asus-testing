::  POWER TEST Script
::  Release: 1.0
::  Date: 02/10/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\PWR
set PASS=test_passed.log
set LOG=on_test.log

:: TESTING PROCCESS

    cd %TOOLDIR%

    pwrtest.exe /sleep /c:5 /d:20 /p:20 /s:4 > %PASS%

    if not EXIST %PASS% (
        goto FAIL
    )

    cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (power_test.cmd)
goto END

:: FAIL
:FAIL
%DIR%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
