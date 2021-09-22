wbt.exe /dump > %CD%\BIOS\TOOLS\bios_version
wmic baseboard get product,manufacturer,version > %CD%\BIOS\TOOLS\bios_model