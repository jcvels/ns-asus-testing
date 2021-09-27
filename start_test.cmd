:: ASUS Testing Script
:: Release: 0.0
:: Date: 08/09/2021

:: CONFIG
@echo off
color 1F
cls

:: SCRIPT CONFIG
set DIR=%CD%

:: START
echo.
echo. // ASUS Notebook Testing Script for MP //
echo.
echo. [%TIME%] Iniciando.
echo. [%TIME%] El directorio de trabajo actual es %DIR%

:: CONFIGURACION DE ENERGIA
echo. [%TIME%] Configuracion de energia aplicada.
C:\Windows\System32\powercfg.exe /s 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c

:: VERSION
set /p VER=<%CD%\.git\FETCH_HEAD
echo. [%TIME%] Version de la herramienta: %VER%

    :: SERIAL NUMBER
    echo. [%TIME%] Ejecutando grabado SSN. (getSerialNumber.exe)
    cd %DIR%\BIOS\TOOLS\
    getSerialNumber.exe
    cd %DIR%

    :: WIFI CONECTION
    echo. [%TIME%] Ejecutando validacion de wifi. (wireless_test.cmd)
    cmd.exe /c %DIR%\WIFI\wireless_test.cmd

    :: FAN - Validacion de funcionamiento, velocidad encendido y apagado del system fan
    echo. [%TIME%] Ejecutando validacion del system fan. (fan_test.cmd)
    cmd.exe /c %DIR%\FAN\fan_test.cmd

    :: BIOS - Validacion de version bios, modelo, configuracion de hora y configuración por defecto.
    echo. [%TIME%] Ejecutando validacion de bios. (bios_test.cmd)
    cmd.exe /c %DIR%\BIOS\bios_test.cmd

    :: ME
    echo. [%TIME%] Ejecutando ME Config. (me_test.cmd)
    cmd.exe /c %DIR%\ME\me_test.cmd

    :: TXE

    :: KEYPARTS
    echo. [%TIME%] Ejecutando keyparts test. (keyparts_test.cmd)
    cmd.exe /c %DIR%\PARTS\keyparts_test.cmd

    :: BATERY START
    echo. [%TIME%] Iniciando battery test. (batteryTestStart.exe)
    cd %DIR%\BATTERY\
    cmd.exe /c %DIR%\BATTERY\batteryTestStart.exe
    cd %DIR%
    
    :: AUDIO
    echo. [%TIME%] Ejecutando audio test. (audio_test.cmd)
    cmd.exe /c %DIR%\AUDIO\audio_test.cmd

    :: KEYBOARD
    echo. [%TIME%] Ejecutando keyboard test. (keyboard_test.cmd)
    cmd.exe /c %DIR%\KEYBOARD\keyboard_test.cmd

    :: VIDEO

    :: TOUCHPAD

    :: CAMERA
    echo. [%TIME%] Ejecutando camera test. (camera_test.cmd)
    cmd.exe /c %DIR%\CAM\camera_test.cmd

    :: USB
    echo. [%TIME%] Ejecutando usb test. (usb_test.cmd)
    cmd.exe /c %DIR%\USB\usb_test.cmd
    
    :: HDMI

    :: LEDS

    :: LID

    :: BATERY END
    echo. [%TIME%] Ejecutando battery test. (battery_test.cmd)
    cmd.exe /c %DIR%\BATTERY\battery_test.cmd

    :: RUN-IN

    :: OA3

    :: SYSTEM INSTALL

:: END
echo. [%TIME%] Finalizando.
echo.
echo. // ASUS Notebook Testing Script for MP //
echo.
color
pause > null
exit

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd
