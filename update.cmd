@echo off

del %CD%\BIOS\TOOLS\test_passed.log
del %CD%\BIOS\TOOLS\bios_version.log
del %CD%\BIOS\TOOLS\bios_model.log
%CD%\BIOS\TOOLS\set_bios_test.cmd

git checkout *.*
git pull

timeout 10
shutdown -r -f -t 0
