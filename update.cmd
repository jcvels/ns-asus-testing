@echo off

del %CD%\BIOS\TOOLS\test_passed.log
del %CD%\BIOS\TOOLS\bios_version.log
del %CD%\BIOS\TOOLS\bios_model.log

git checkout *.*
git pull
