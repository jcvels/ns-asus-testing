set currdir=%~dp0
cd /d %currdir%
call Ant.exe -get_tx_power_delta_limits >Out.txt
timeout 3
