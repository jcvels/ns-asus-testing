set currdir=%~dp0
cd /d %currdir%
call Ant.exe -get_bios_sar_table >Out.txt
timeout 3