copy /b love.exe+%1 "%~n1.exe"

ren "%~n1.exe" BakeRaid.exe
move BakeRaid.exe builds/

del %1
pause