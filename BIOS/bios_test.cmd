::  BIOS TEST & CONFIG Script
::  Release: 1.0
::  Date: 11/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set TOOL=%CD%\BIOS\TOOLS\WBT.exe
set VERSION=%CD%\BIOS\TOOLS\bios_version
set MODEL=%CD%\BIOS\TOOLS\bios_model
set TEMP=%CD%\BIOS\TOOLS\on_test.tmp
set LOG=%CD%\BIOS\bios_test.log

:: TESTING PROCCESS

    :: dump bios mfg block
    %TOOL% /dump > %TEMP%
    timeout 1 >> %LOG%

    :: check if bios version is the spected
    fc %VERSION% %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )

    :: get bios model by wmic
    wmic baseboard get product,manufacturer,version > %TEMP%
    timeout 1 >> %LOG%

    :: check if bios model is the spected
    fc %MODEL% %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (bios_test.cmd)
goto END

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
