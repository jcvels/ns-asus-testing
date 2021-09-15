:: OEM Activation 3.0 Key Injection Script
:: Release: 2.2
:: Date: 08/09/2021

:: PARAMETROS INICIALES
@echo off
color 1F
cls

:: POWERSUPPLY
%CD%\OA3\TOOLS\waitKey.exe

:: CONFIGURACION
set FFKI_IP=192.168.0.167
set CONFIGFILE=%CD%\OA3\TOOLS\oa3.cfg
set OA3TOOL=%CD%\OA3\TOOLS\oa3tool.exe
set FLASHTOOL=%CD%\OA3\TOOLS\SLPBuilderConsole.exe
set FLASHCOMMAND=/oa30:\OEM\OA3\TOOLS\OA3.bin
set LOGFILE=%CD%\OA3\injection_log_%date%_%time%.log

:: INICIO
echo.
echo.OEM Activation 3.0 Key Injection Script 2.2
echo.## Iniciando nuevo proceso de inyeccion: %date% %time% >> %LOGFILE%

:: ARREGLOS PREVIOS
:: REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\ClipSVC\Parameters" /v "ProcessBiosKey" /f

:: VERIFICA SI EXISTE UNA DPK INYECTADA EN EL SISTEMA Y RECUPERA EL PKID
%OA3TOOL% /validate >> %LOGFILE%
if %errorlevel% == 0 (
	color 4F
	echo. - El equipo ya tiene una DPK inyectada. Se intentará recuperar el ProductKeyID.
	C:\OEM\OA3\TOOLS\PKIDasker.exe
	goto OK
) 

:: VERIFICA CONEXION
ping %FFKI_IP% >> %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. - No hay conexión con el FFKI.
	goto SALIR
) 

:: VERIFICA CONFIGURACION
find /C "%FFKI_IP%" %CONFIGFILE% >> %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. - Error de configuración de IP en archivo CFG.
	goto SALIR
) 

:: SOLICITUD DE DPK AL SERVER
%OA3TOOL% -Assemble -Configfile=%CONFIGFILE% >> %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. - ERROR OA3TOOL ASSEMBLE
	goto SALIR
) 

:: INYECCION DE DPK EN BIOS
%FLASHTOOL% %FLASHCOMMAND% >> %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. - ERROR HERRAMIENTA DE INYECCIÓN
	goto SALIR
)

:: REPORTE DE INYECCION + HASH + OHR INFO AL SERVER
%OA3TOOL% -Report -Configfile=%CONFIGFILE% >> %LOGFILE%
if not %errorlevel% == 0 (
	color 4F
	echo. - ERROR OA3TOOL REPORT 
	goto SALIR
) 

:OK
color 2F
echo. - LA OPERACION SE REALIZO CON EXITO
echo.OA3 DPK OK %date% %time% >> C:\OEM\ok_dpk
exit

:SALIR
timeout 10
