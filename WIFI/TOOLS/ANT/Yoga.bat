set currdir=%~dp0
cd /d %currdir%
call Ant.exe -get_psensor_full_tx_limits >Out.txt
timeout 3