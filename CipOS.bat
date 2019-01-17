@echo off
start Tutorial1.mp3
color 9B
ping localhost -n 2 >nul
color 0A
ping localhost -n 2 >nul
color 1A
ping localhost -n 2 >nul
color 2A
ping localhost -n 2 >nul
color 4A
ping localhost -n 2 >nul
color 9B
ping localhost -n 2 >nul
title                                           ~Starting up...~

:start
echo.
echo ~ Actions ~
echo.
echo 1) login
echo 2) help
echo 3) bios
echo.
set /p action=Action:
cls

if %action%==help (
start Useful-tips.txt
goto start
) else (
echo.
)
  


if %action%==bios (
echo Starting CipOS Bios.
ping localhost -n 2 >nul
cls
echo Starting CipOS Bios..
color fc
ping localhost -n 2 >nul
cls
echo Starting CipOS Bios...
ping localhost -n 3 >nul
cls
echo Bios : 
echo.
echo CPU Usage 12%
echo.
echo Virtualization: OFF
echo.
echo Vram: ON
echo.
echo OS Active: Yes
echo.
echo.
echo press Space-bar to close 
pause > null
cls
goto start
) else (
echo.
)


color 9B
echo Avaible Users :
echo.
echo 1) user
echo 2) guest
echo.
set /p user= Login Into:

if %user%==devgin (
    goto login
) else (
echo.
)

if %action%==exit (
	exit
) else (
echo.
)

if %user%==devtop (
    goto desktop
) else (
echo.
)

if %user%==guest (
    goto startup
) else (
echo.
)

if %user%==user (
    goto startup
) else (
echo.
)

ping localhost -n 46 >nul
taskkill /F /IM bsplayer.exe

pause

ping localhost -n 5 >nul
cls

echo CipOS is starting in :
timeout /t 10

:sysfail
cls
start c:\Users\PC\Desktop\CipOS\CipOS\data\bsod.hta
exit

:sysfail2
cls
echo The system is unable to restart.
echo ERROR: File is missing.
echo ------------------------------------------
echo Fix: Reinstalling the OS may fix the error.
pause
exit

:startup
echo Starting up program.
ping localhost -n 2 >nul
cls
echo Starting up program..
ping localhost -n 2 >nul
cls
echo Starting up program...
ping localhost -n 5 >nul
cls

ping localhost -n 2 >nul
echo Loading Cip.VbsHost
ping localhost -n 2 >nul

echo Mozzila/5.0 (CipOS NT 2.0; Cip64; x64) is starting up...
ping localhost -n 5 >nul

echo hostanme: PC
echo hash:
echo Chrome PDF Viewer
echo Chrome PDF Plugin
echo search


echo CipDoac v2.2.2 booting on...
echo Chrome 69.0.3497.100 on CipDoac 64-bit

if EXIST C:\Users\PC\Desktop\CipOS\CipOS\data\bios.dll (
echo bios ... ready
) else (
goto sysfail
)
ping localhost -n 2 >nul

if EXIST C:\Users\PC\Desktop\CipOS\CipOS\data\settings.dll (
echo settings ... ready
) else (
goto sysfail2
)

ping localhost -n 2 >nul

if EXIST C:\Users\PC\Desktop\CipOS\CipOS\data\modules.dll (
echo modules ... ready
) else (
goto sysfail2
)

ping localhost -n 5 >nul

if EXIST C:\Users\PC\Desktop\CipOS\CipOS\data\system.dll (
echo system ... ready
) else (
goto sysfail
)

ping localhost -n 2 >nul
echo audio ... ready
ping localhost -n 2 >nul
echo boot ... ready
ping localhost -n 10 >nul
echo apps ... ready
ping localhost -n 10 >nul
echo config ... ready
ping localhost -n 2 >nul
echo exe ... ready
ping localhost -n 2 >nul
echo start ... ready
ping localhost -n 2 >nul

echo Starting Up!
ping localhost -n 2 >nul

if %user%==guest (
    echo Welcome Guest!
    goto desktop
) else (
echo.
)

cls
goto login

:login
start C:\Users\PC\Desktop\CipOS\CipOS\WinXpStarup.wav
ping localhost -n 10 >nul
taskkill /F /IM bsplayer.exe
cls
title Login
set /p uname=Username:

if %uname%==help (
start Useful-tips.txt
goto login
) else (
echo.
)

if %uname%==PC (
echo.
) else (
echo Invalid User!
goto login
)

set /p password=Password:

if %password%==Ciprian2005 (
    echo Welcome back %uname%!
    echo Loading Desktop
    ping localhost -n 3 >nul
    goto desktop
) else (
echo Incorrect password!
goto login
)

:desktop
cls
title CipOS Desktop
echo.
echo Here are a few programs that you can run:
echo.
echo 1) System Info
echo 2) Calculator
echo 3) Clock
echo 4) Calendar
echo 5) Notepad
echo 6) cmd ( Command Prompt )
echo 7) uTorrent
echo 8) Google
echo 9) Youtube
echo 10) Pastebin
echo 11) Krunker
echo 12) Settings
echo 13) Whatsapp
echo 14) Team Viewer
echo 15) Logoff
echo 16) Exit

set /p app=App:

if %app%==system (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo ========================
echo CipOS V2.2.2 Build 2673
echo ========================
echo Kernel 2.08532
echo 4Gb Avaible RAM
echo Proccesor: Intel Core I5 70043
echo Video Card: NVIDIA GEFORCE 980 TI
pause
goto desktop

) else (
echo.
)

if %app%==calc (
cls
start %~dp0\Calculator.bat
pause>nul
goto desktop
) else (
echo.
)

if %app%==clock (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Time:
time
pause
goto desktop
) else (
echo.
)


if %app%==calendar (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Date:
date
pause
goto desktop
) else (
echo.
)

if %app%==notepad (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Started Notepad!
    start notepad.exe
    exit
) else (
echo.
)

if %app%==cmd (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Command Prompt Started!
    start cmd /k color 9B
    cls
    goto desktop
) else (
echo.
)

if %app%==utorrent (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo uTorrent Started!
    start %~dp0\uTorrent.exe
    exit
) else (
echo.
)


if %app%==google  (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Google Started!
    start chrome.exe
    exit
) else (
echo.
)

if %app%==youtube (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo YouTube Started!
    start https://www.youtube.com/
    exit
) else (
echo.
)

if %app%==pastebin (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo PasteBin Started!
    start https://pastebin.com
    exit
) else (
echo.
)

if %app%==krunker (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Krunker Started!
    start https://krunker.io
    cls
    goto desktop
) else (
echo.
)


if %app%==settings (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Settings Started!
    start ms-settings:
    exit
) else (
echo.
)

if %app%==whatsapp (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo WhatsApp Started!
    start %~dp0\WhatsApp.exe
    exit
) else (
echo.
)


if %app%==teamviewer (
cls
echo Loading.
ping localhost -n 2 >nul
cls
echo Loading..
ping localhost -n 2 >nul
cls
echo Loading...
ping localhost -n 2 >nul
cls
echo Loading.
ping localhost -n 4 >nul
cls
echo Team Viewer Started!
    start %~dp0\TeamViewer.exe
    exit
) else (
echo.
)


if %app%==logoff (
goto login
) else (
echo.
)


if %app%==exit (
cls
echo Closing.
ping localhost -n 2 >nul
cls
echo Closing..
ping localhost -n 2 >nul
cls
echo Closing...
ping localhost -n 2 >nul
cls
echo Closing.
ping localhost -n 2 >nul
cls
exit
) else (
echo.
)


if %app%==restart (
cls
echo Closing.
ping localhost -n 2 >nul
cls
echo Closing..
ping localhost -n 2 >nul
cls
echo Closing...
ping localhost -n 2 >nul
cls
echo Closing.
ping localhost -n 2 >nul
cls
start %~dp0\CipOS.bat
exit
