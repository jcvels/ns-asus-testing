set currdir=%~dp0
cd /d %currdir%
call Ant.exe -querymcc >Out.txt
timeout 3