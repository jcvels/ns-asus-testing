# Configurador de Booteo para proyecto JM
Cambia la configuración de inicio de Windowa 10 de modo tal que en el siguiente arranque se inicie desde un SO Live.

## Compatibilidad
- Netbook Educativa Noblex SF20GM7

## Preparación

### Disco Live OS
1. Copiar los archivos ubicados en el directorio ``autostart-files`` en el raiz del volumen de inicio del disco que se quiere arrancar automaticamente.
2. Editar el archivo ``startup.sh`` y cambiar la sección ``\EFI\boot\bootx64.efi`` con la ruta de inicio del SO Live si es necesario.

### Imagen de testing
1. Copiar el directorio del proyecto ``jm-boot-from-usb`` detro de la imagen de testeo.

## Modo de uso
1. Acceder al directo ``jm-boot-from-usb`` en una consola con privilegios de administrador.
2. Ejecutar el script ``boot-from-usb.cmd``.
3. El equipo se reiniciará automaticamente.

## Modo operativo
1. Montar particion de arranque Windows 10 como S:
2. Elimina todos los archivos de la carpeta ``S:\EFI\``.
3. Copiar archivo ``uefi_shell_min.efi`` como ``S:\EFI\Boot\bootx64.efi``.
4. Copiar archivo ``profiles.txt`` como ``S:\EFI\Boot\profiles.txt``.
5. Desmontar la particion de arranque.
6. Enviar orden de apagado del sistema.
