::  BIOS TEST & CONFIG Script
::  Release: 1.0
::  Date: 22/09/2021
::  Author: Jorge Pauvels ( JorgeClaudio.Pauvels@newsan.com.ar)

@echo off

:: CONFIGURACION
set OLD=%CD%
set TOOL_1=%CD%\BIOS\TOOLS\WBT.exe
set TOOL_2=%CD%\BIOS\TOOLS\WFTTOOL.exe
set TOOL_3=setDateTime.exe
set VERSION=%CD%\BIOS\TOOLS\bios_version
set MODEL=%CD%\BIOS\TOOLS\bios_model
set SETTIME=%CD%\BIOS\TIME\
set TEMP=%CD%\BIOS\TOOLS\on_test.tmp
set LOG=%CD%\BIOS\bios_test.log


:: TESTING PROCCESS
   
    :: get bios model by wmic
    wmic baseboard get product,manufacturer,version > %TEMP%
    timeout 1 >> %LOG%

    :: check if bios model is the spected
    fc %MODEL% %TEMP% >> %LOG%
    if not %errorlevel% == 0 (
        goto FAIL
    )

    :: set date and time
    cd %SETTIME%
    %TOOL_3%

    if NOT EXIST %SETTIME%\test_passed.log (
        goto FAIL
    )
    
    :: set bios to default and validate
    %TOOL_2% /def > %TEMP%
    timeout 1 >> %LOG%

    :: dump 
    %TOOL_1% /dump > bios_dump.txt
    timeout 1 >> %LOG%

    cd %OLD%

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
