@echo off
platform-tools\adb.exe forward tcp:2302 tcp:2302


echo.
echo DO NOT CLOSE OTHERWISE YOU CAN'T REACH DROIDMOTE SERVER
echo. 
echo DROIDMOTE SERVER LISTEN ON :
echo. 
ipconfig | findstr "IPv4" | findstr /V "Auto"
echo. 
echo WRITE IN THE CLIENT THE IP OF YOUR PC MANUALLY TO CONNECT TO THE SERVER

start /B socat\socat TCP4-LISTEN:2302,fork,reuseaddr TCP4:127.0.0.1:2302