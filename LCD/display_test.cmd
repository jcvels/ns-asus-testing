::  LCD TEST Script
::  Release: 1.0
::  Date: 27/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\LCD
set PASS=test_passed.log
set LOG=on_test.log

:: TESTING PROCCESS

    cd %TOOLDIR%

    displayTest.exe

    if not EXIST %PASS% (
        goto FAIL
    )

    cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (display_test.cmd)
goto END

:: FAIL
:FAIL
%DIR%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
