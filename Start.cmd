@ECHO OFF
@title M1kk4l
:iniServer
echo %time%
echo Starter server
:: 🡣🡣 Din mappe til Server Data EKS. C:\DevoNetwork\server\ 🡣🡣
cd /d  ...\FXServer\Server-data

:: 🡣🡣 Din mappe til FXServer.exe EKS. C:\DevoNetwork\server\FXServer.exe 🡣🡣
...\FXServer.exe +exec server.cfg
ECHO 1. Genstart
ECHO 2. Luk Ned
ECHO 3. Slet Cache + Genstart
ECHO.

CHOICE /C 123

IF ERRORLEVEL 3 GOTO Cache
IF ERRORLEVEL 2 GOTO LukNed
IF ERRORLEVEL 1 GOTO Genstart

:Cache
echo Soger efter Cache...
rmdir /S /Q cache
timeout /t 2 >nul
echo %time% : Cache Ryddet!
GOTO Genstart

:Genstart
ECHO Genstart
GOTO iniServer

:LukNed
ECHO LukNed
GOTO Luk