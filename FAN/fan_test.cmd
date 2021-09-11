::  FAN TEST Script
::  Release: 1.1
::  Date: 11/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set TOOL=%CD%\FAN\TOOLS\WITEEC.exe
set TEMP=%CD%\FAN\TOOLS\on_test.tmp
set LOG=%CD%\FAN\fan_test.log

:: TESTING PROCCESS

    :: set full speed and wait 1 sec
    %TOOL% /fan -set 0 FS >> %LOG%
    timeout 3 >> %LOG%

    :: check system fan rpms
    %TOOL% /fan -get 0 RPM -p 2 > %TEMP%
    find /C "FAN 0 RPM: 5" %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )
    find /C "return code = 0" %TEMP% >> %LOG%
        if not %errorlevel% == 0 (
        goto FAIL
    )

    :: set stop and wait 1 sec
    %TOOL% /fan -set 0 stop >> %LOG%
    timeout 3 >> %LOG%

    :: check system fan rpms
    %TOOL% /fan -get 0 RPM -p 2 > %TEMP%
    find /C "FAN 0 RPM: 0" %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )
    find /C "return code = 0" %TEMP% >> %LOG%
        if not %errorlevel% == 0 (
        goto FAIL
    )

:: PASS
:PASS
color 2F
echo. [INFO] PASS (fan_test.cmd)
goto END

:: FAIL
:FAIL
color 4F
echo.
echo. FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL --
echo. -- FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL
echo. FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL --
echo.
pause
exit

:END
timeout 2 >> %LOG%
color 1F
