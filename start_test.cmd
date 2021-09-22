:: ASUS Testing Script
:: Release: 0.0
:: Date: 08/09/2021

:: CONFIG
@echo off
color 1F
cls
C:\Windows\System32\powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: SCRIPT CONFIG
set DIR=%CD%

:: START
echo.
echo. // ASUS Notebook Testing Script for MP //
echo.
echo. [%TIME%] Iniciando.
echo. [%TIME%] El directorio de trabajo actual es %DIR%

:: SERIAL NUMBER
echo. [%TIME%] Ejecutando grabado SSN. (getSerialNumber.exe)
cd %DIR%\BIOS\TOOLS\
getSerialNumber.exe

:: WIFI CONECTION
echo. [%TIME%] Ejecutando validacion de wifi. (wireless_test.cmd)
cmd.exe /c %DIR%\WIFI\wireless_test.cmd

:: FAN - Validacion de funcionamiento, velocidad encendido y apagado del system fan
echo. [%TIME%] Ejecutando validacion del system fan. (fan_test.cmd)
cmd.exe /c %DIR%\FAN\fan_test.cmd

:: BIOS - Validacion de version bios, modelo, configuracion de hora y configuración por defecto.
echo. [%TIME%] Ejecutando validacion de bios. (bios_test.cmd)
cmd.exe /c %DIR%\BIOS\bios_test.cmd

:: END
echo. [%TIME%] Testing finalizando.
echo.
echo. // ASUS Notebook Testing Script for MP //
echo.
color
pause > null

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd
