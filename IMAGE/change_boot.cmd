@echo off
cls
echo [%TIME%] Iniciando ...

:: Montar particion de arranque del disco
echo [%TIME%] Montando disco de arranque en S: ...
mountvol S: /s

:: Eliminar archivos de arranque actuales
echo [%TIME%] Eliminanndo archivos de arranque actuales ...
DEL /F /S /Q S:\EFI\*.*

:: Crear carpeta y copiar archivos de la aplicacion shell.efi
echo [%TIME%]  Copiando archivos de arranque nuevos ...
IF NOT EXIST S:\EFI\Boot mkdir S:\EFI\Boot
copy /Y uefi_shell_min.efi S:\EFI\Boot\bootx64.efi
copy /Y profiles.txt S:\EFI\Boot\profiles.txt

IF ERRORLEVEL 1 GOTO ERR ELSE echo (JM) Validando ...

:: Si todo fue OK
:OK
echo [%TIME%] El proceso finalizó sin errores.
mountvol S: /d
timeout 5
GOTO END

:: Si ocurrio un error
:ERR
echo (JM) ocurio un error durante el proceso.
pause

:: Salida
:END
exit
