@echo off

del %CD%\BIOS\TOOLS\test_passed.log
del %CD%\BIOS\TOOLS\bios_version
del %CD%\BIOS\TOOLS\bios_model
del %CD%\OA3\TOOLS\on_test.xml

git checkout *.*
git pull

%CD%\BIOS\TOOLS\wbt.exe /dump > %CD%\BIOS\TOOLS\bios_version
wmic baseboard get product,manufacturer,version > %CD%\BIOS\TOOLS\bios_model

timeout 10
shutdown -r -f -t 0
