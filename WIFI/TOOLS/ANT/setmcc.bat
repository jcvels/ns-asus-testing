set currdir=%~dp0
cd /d %currdir%
call Ant.exe -setmcc eu 
timeout 3