:: ASUS Testing Script
:: Release: 0.0
:: Date: 08/09/2021

:: CONFIG
@echo off
color 1F
cls
C:\Windows\System32\powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: TODO:
::          Wireless connection

:: SCRIPT CONFIG
set TEST=PRUEBA PRUEBA
set DIR=%CD%
set WLAN=Wifi2.4
set PING=1.1.1.1

:: START
echo.
echo. [%TIME%] ASUS Notebook Testing Script for MP
echo. [%TIME%] El directorio de trabajo actual es %DIR%

:: WIFI CONECTION
echo. [%TIME%] Iniciando coneccion de red.
netsh wlan connect name=%WLAN% ssid=%WLAN%
timeout 10 > null
ping %PING% > null
if not %errorlevel% == 0 (
    goto FAIL
)

:: FAN - Validacion de funcionamiento, velocidad encendido y apagado del system fan
echo. [%TIME%] Ejecutando validacion del system fan. (fan_test.cmd)
cmd.exe /c %DIR%\FAN\fan_test.cmd

:: BIOS - Validacion de version bios, modelo, configuracion de hora y configuración por defecto.
echo. [%TIME%] Ejecutando validacion de bios. (bios_test.cmd)
cmd.exe /c %DIR%\BIOS\bios_test.cmd

:: END
echo. [%TIME%] Testing finalizando.
color
pause > null

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd
