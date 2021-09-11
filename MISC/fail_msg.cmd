color 4F
echo.
echo. FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL --
echo. -- FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL
echo. FAIL -- FAIL -- FAIL -- FAIL -- -- FAIL -- FAIL -- FAIL -- FAIL ---- FAIL -- FAIL -- FAIL -- FAIL -- FAIL -- FAIL --
echo.
start wmplayer "C:\Windows\Media\Alarm10.wav" && timeout 5 > null && taskkill /im wmplayer.exe > null
pause
exit