:: ASUS Testing Script
:: Release: 1.1
:: Date: 04/04/2022

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

    :: WIFI CONECTION 
    echo. [%TIME%] Ejecutando conexión wifi y configuración de hora del sistema. (wireless_connect.cmd)
    cmd.exe /c %DIR%\WIFI\wireless_connect.cmd

    :: UPDATE
    curl -s -H "Accept: application/vnd.github.VERSION.sha" "https://api.github.com/repos/jcvels/ns-asus-testing/commits/master" > remote-version
    set /p VERREMOTE=<%CD%\remote-version
    find /C "%VERREMOTE%" %CD%\.git\FETCH_HEAD > null
    if not %errorlevel% == 0 (
        echo. [%TIME%] Se requiere actualizacion...
        echo.
        git checkout *.*
        git pull
        echo.
        timeout 10
        shutdown -r -f -t 0
    ) else echo. [%TIME%] Ejecutando ultima version publicada.

    :: SERIAL NUMBER
    echo. [%TIME%] Ejecutando grabado SSN. (getSerialNumber.exe)
    cd %DIR%\BIOS\TOOLS\
    getSerialNumber.exe
    cd %DIR%

    :: CHECK IF DPK WAS INJECTED
    %DIR%\OA3\TOOLS\oa3tool.exe /validate > out.log
    if %errorlevel% == 0 (
        echo. [%TIME%] Continuando con inyeccion DPK
        goto OA3
    ) 

    :: ===> TODO: Poner aca Wifi-Check

    :: FAN - Validacion de funcionamiento, velocidad encendido y apagado del system fan
    echo. [%TIME%] Ejecutando validacion del system fan. (fan_test.cmd)
    cmd.exe /c %DIR%\FAN\fan_test.cmd

    :: BIOS - Validacion de version bios, modelo, configuracion de hora y configuración por defecto.
    echo. [%TIME%] Ejecutando validacion de bios. (bios_test.cmd)
    cmd.exe /c %DIR%\BIOS\bios_test.cmd

    :: ME
    echo. [%TIME%] Ejecutando ME Config. (me_test.cmd)
    cmd.exe /c %DIR%\ME\me_test.cmd

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
    echo. [%TIME%] Ejecutando display test. (display_test.cmd)
    cmd.exe /c %DIR%\LCD\display_test.cmd

    :: TOUCHPAD

    :: CAMERA
    echo. [%TIME%] Ejecutando camera test. (camera_test.cmd)
    cmd.exe /c %DIR%\CAM\camera_test.cmd

    :: USB
    echo. [%TIME%] Ejecutando usb test. (usb_test.cmd)
    cmd.exe /c %DIR%\USB\usb_test.cmd

    :: HDMI
    echo. [%TIME%] Ejecutando hdmi test. (hdmi_test.cmd)
    cmd.exe /c %DIR%\HDMI\hdmi_test.cmd

    :: LEDS

    :: LID

    :: POWER
    echo. [%TIME%] Ejecutando power management test. (power_test.cmd)
    echo. [%TIME%] El equipo se suspendera 5 veces durante 30 segundos cada vez.

    cmd.exe /c %DIR%\PWR\power_test.cmd

    :: BATERY END
    echo. [%TIME%] Ejecutando battery test. (battery_test.cmd)
    cmd.exe /c %DIR%\BATTERY\battery_test.cmd

    :: RUN-IN
    echo. [%TIME%] Ejecutando run-in test. (runin_test.cmd)
    cmd.exe /c %DIR%\RUNIN\runin_test.cmd

    :OA3
    cmd.exe /c %DIR%\OA3\ejecutar_dpk.cmd

    :: SYSTEM INSTALL
    echo. [%TIME%] Instalacion de imagen cliente. (imageDeployerLauncher.exe)
    cd %DIR%\IMAGE\
    imageDeployerLauncher.exe
    cd %DIR%

:: END
echo. [%TIME%] Finalizando.
echo.
echo. // ASUS Notebook Testing Script for MP //
echo.
color
timeout 5 > null
shutdown -r -f -t 0
exit

:: FAIL
:FAIL
%CD%\MISC\fail_msg.cmd
