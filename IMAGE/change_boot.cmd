@echo off
echo (%TIME%) Iniciando ...

:: Montar particion de arranque del disco
echo (%TIME%) Montando disco de arranque en S: ...
mountvol S: /s

:: Eliminar archivos de arranque actuales
echo (%TIME%) Eliminanndo archivos de arranque actuales ...
DEL /F /S /Q S:\EFI\*.*

:: Crear carpeta y copiar archivos de la aplicacion shell.efi
echo (%TIME%) Copiando archivos de arranque nuevos ...
IF NOT EXIST S:\EFI\Boot mkdir S:\EFI\Boot
copy /Y uefi_shell_min.efi S:\EFI\Boot\bootx64.efi
copy /Y profiles.txt S:\EFI\Boot\profiles.txt

:: Validación
IF ERRORLEVEL 1 GOTO ERR 

echo (%TIME%) El proceso finalizó sin errores.
exit

:: Si ocurrio un error
:ERR
echo (%TIME%) Ocurio un error durante el proceso.
pause
