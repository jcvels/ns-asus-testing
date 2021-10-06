@echo off

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\PWR
set PASS=test_passed.log
set LOG=on_test.log

:: TESTING PROCCESS

    cd %TOOLDIR%

    "C:\Program Files (x86)\BurnInTest\bit.exe" -c asus-runin-5m-v1.bitcfg -r

    @REM if not EXIST %PASS% (
    @REM     goto FAIL
    @REM )

    cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (runin_test.cmd)
goto END

:: FAIL
:FAIL
%DIR%\MISC\fail_msg.cmd

:END
timeout 2 >> %LOG%
color 1F
