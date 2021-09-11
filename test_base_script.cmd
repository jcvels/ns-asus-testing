:: <TEST NAME>
:: Release: 1.0
:: Date: 00/00/2021

:: PARAMETROS INICIALES
@echo off
color 1F
cls

:: CONFIGURACION
set TEST=NOMBRE DEL TESTEO
set TOOL=C:\OEM\FAN\TOOLS\WITEEC.exe

:: TESTING PROCESS


:: PASS
:PASS
color 2F
echo.
echo. PASS -- PASS -- PASS -- PASS -- -- PASS -- PASS -- PASS -- PASS ---- PASS -- PASS -- PASS -- PASS -- PASS -- PASS --
echo. -- PASS -- PASS -- PASS -- PASS -- -- PASS -- PASS -- PASS -- PASS ---- PASS -- PASS -- PASS -- PASS -- PASS -- PASS
echo. PASS -- PASS -- PASS -- PASS -- -- PASS -- PASS -- PASS -- PASS ---- PASS -- PASS -- PASS -- PASS -- PASS -- FAIL --
echo.
timeout 2
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
