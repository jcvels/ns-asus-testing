@echo off
echo ================================================
echo  Dump Power Table and SAR Power Limit Table Test
echo ================================================

:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    wscript "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------

cd /d %~dp0

echo.
echo Dumping power table now, please wait for a while....

if exist PowerTable.txt del PowerTable.txt
SingleSkuSolutionCheckTool.exe dump pwrTable -f PowerTable.txt > NUL

if exist PathA_2G.txt del PathA_2G.txt
if exist PathA_5G.txt del PathA_5G.txt
if exist PathB_2G.txt del PathB_2G.txt
if exist PathB_5G.txt del PathB_5G.txt

SingleSkuSolutionCheckTool.exe dump pwrIndex 0 0 -f PathA_2G.txt > NUL
SingleSkuSolutionCheckTool.exe dump pwrIndex 0 1 -f PathA_5G.txt > NUL
SingleSkuSolutionCheckTool.exe dump pwrIndex 1 0 -f PathB_2G.txt > NUL
SingleSkuSolutionCheckTool.exe dump pwrIndex 1 1 -f PathB_5G.txt > NUL

echo.
pause
echo.
@echo on