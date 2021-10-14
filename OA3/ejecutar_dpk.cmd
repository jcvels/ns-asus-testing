:: OEM Activation 3.0 Key Injection Script
:: Release: 2.2
:: Date: 08/09/2021

:: PARAMETROS INICIALES
@echo off
color 1F

:: CONFIGURACION
set DIR=%CD%
set TOOLDIR=%CD%\OA3\TOOLS

set FFKI_IP=MDOS
set CONFIGFILE=%TOOLDIR%\oa3.cfg
set OA3TOOL=%TOOLDIR%\oa3tool.exe
set FLASHTOOL=%TOOLDIR%\SLPBuilderConsole.exe
set SHOWDPK=%TOOLDIR%\showLicences.exe.exe
set FLASHCOMMAND=/oa30:OA3.bin
set LOGFILE=%TOOLDIR%\injection.log

:: INICIO
echo. [%TIME%] OEM Activation 3.0 Key Injection Script 2.2
cd %TOOLDIR%

:: VERIFICA SI EXISTE UNA DPK INYECTADA EN EL SISTEMA Y RECUPERA EL PKID
%OA3TOOL% /validate > %LOGFILE%
if %errorlevel% == 0 (
	echo. [%TIME%] El equipo ya tiene una DPK inyectada.
	goto REPORT
) 

:: VERIFICA CONEXION
ping %FFKI_IP% > %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. [%TIME%] No hay conexion con MDOS FFKI
	goto FAIL
) 

:: VERIFICA CONFIGURACION
find /C "%FFKI_IP%" %CONFIGFILE% > %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. [%TIME%] Error de configuracion de IP en archivo CFG.
	goto FAIL
) 

:: SOLICITUD DE DPK AL SERVER
%OA3TOOL% -Assemble -Configfile=%CONFIGFILE% > %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. [%TIME%] ERROR OA3TOOL ASSEMBLE
	goto FAIL
) 

:: COPIA DE SEGURIDAD XML
copy oa3.xml on_test.xml > %LOGFILE%
if NOT EXIST on_test.xml (
	color 4F
	echo. [%TIME%] ERROR COPIA DE SEGURIDAD XML
	goto FAIL
) 

:: INYECCION DE DPK EN BIOS
%FLASHTOOL% %FLASHCOMMAND% > %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. [%TIME%] ERROR HERRAMIENTA DE INYECCION
	goto FAIL
)

:: REBOOT
shutdown /r /f /t 0

:REPORT
:: REPORTE DE INYECCION + HASH + OHR INFO AL SERVER
%OA3TOOL% -Report -Configfile=%CONFIGFILE% > %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. [%TIME%] ERROR OA3TOOL REPORT 
	goto FAIL
) 

:: MOSTRAR LICENCIAS
%SHOWDPK%

cd %DIR%

:: PASS
:PASS
color 2F
echo. [%TIME%] PASS (ejecutar_dpk.cmd)
goto END

:: FAIL
:FAIL
%DIR%\MISC\fail_msg.cmd

:END
timeout 2 > %LOG%
color 1F
