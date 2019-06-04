@echo off

::UBA V1
title Ultimate Battle Arena By Cip 2.0
echo.
echo.
echo.
echo.

echo                                                       Welcome to 
echo.
                                                                                
echo                       UUUUUUUU     UUUUUUUU     BBBBBBBBBBBBBBBBB                       AAA               
echo                       U::::::U     U::::::U     B::::::::::::::::B                     A:::A              
echo                       U::::::U     U::::::U     B::::::BBBBBB:::::B                   A:::::A             
echo                       UU:::::U     U:::::UU     BB:::::B     B:::::B                 A:::::::A            
echo                        U:::::U     U:::::U        B::::B     B:::::B                A:::::::::A           
echo                        U:::::D     D:::::U        B::::B     B:::::B               A:::::A:::::A          
echo                        U:::::D     D:::::U        B::::BBBBBB:::::B               A:::::A A:::::A         
echo                        U:::::D     D:::::U        B:::::::::::::BB               A:::::A   A:::::A        
echo                        U:::::D     D:::::U        B::::BBBBBB:::::B             A:::::A     A:::::A       
echo                        U:::::D     D:::::U        B::::B     B:::::B           A:::::AAAAAAAAA:::::A      
echo                        U:::::D     D:::::U        B::::B     B:::::B          A:::::::::::::::::::::A     
echo                        U::::::U   U::::::U        B::::B     B:::::B         A:::::AAAAAAAAAAAAA:::::A    
echo                        U:::::::UUU:::::::U      BB:::::BBBBBB::::::B        A:::::A             A:::::A   
echo                         UU:::::::::::::UU       B:::::::::::::::::B        A:::::A               A:::::A  
echo                           UU:::::::::UU         B::::::::::::::::B        A:::::A                 A:::::A 
echo                             UUUUUUUUU           BBBBBBBBBBBBBBBBB        AAAAAAA                   AAAAAAA
echo.
echo.
echo                                                     Ultimate Battle Arena
ping localhost -n 5 >nul

cls

del /q "C:\Users\%username%\Desktop\UBA-Official-Game"

echo.
echo.
echo.
echo.

echo                                                       Welcome to 
echo.
                                                                                
echo                       UUUUUUUU     UUUUUUUU     BBBBBBBBBBBBBBBBB                       AAA               
echo                       U::::::U     U::::::U     B::::::::::::::::B                     A:::A              
echo                       U::::::U     U::::::U     B::::::BBBBBB:::::B                   A:::::A             
echo                       UU:::::U     U:::::UU     BB:::::B     B:::::B                 A:::::::A            
echo                        U:::::U     U:::::U        B::::B     B:::::B                A:::::::::A           
echo                        U:::::D     D:::::U        B::::B     B:::::B               A:::::A:::::A          
echo                        U:::::D     D:::::U        B::::BBBBBB:::::B               A:::::A A:::::A         
echo                        U:::::D     D:::::U        B:::::::::::::BB               A:::::A   A:::::A        
echo                        U:::::D     D:::::U        B::::BBBBBB:::::B             A:::::A     A:::::A       
echo                        U:::::D     D:::::U        B::::B     B:::::B           A:::::AAAAAAAAA:::::A      
echo                        U:::::D     D:::::U        B::::B     B:::::B          A:::::::::::::::::::::A     
echo                        U::::::U   U::::::U        B::::B     B:::::B         A:::::AAAAAAAAAAAAA:::::A    
echo                        U:::::::UUU:::::::U      BB:::::BBBBBB::::::B        A:::::A             A:::::A   
echo                         UU:::::::::::::UU       B:::::::::::::::::B        A:::::A               A:::::A  
echo                           UU:::::::::UU         B::::::::::::::::B        A:::::A                 A:::::A 
echo                             UUUUUUUUU           BBBBBBBBBBBBBBBBB        AAAAAAA                   AAAAAAA
echo.
echo.
echo                                                     Ultimate Battle Arena 
echo                                                           Loading...
ping localhost -n 10 >nul

:stats
set health=50
set wep=None
set arm=5
set dmg=5
set enhp=50
set endmg=3
set money=100


:login
cls
echo ---------------------
echo Log-In to UBA Account
echo.
echo.
echo.
echo Please type your username and press enter...
echo [To Create an Account, type 1 and Press Enter]
echo.
set /p username=Username:

if %username% == 1 goto create_account
cls

echo ---------------------
echo Log-In to UBA Account
echo.
echo.
echo.
echo Please type your password and press enter...
echo.
set /p password=Password:

if exist ".\GameFiles\Users\%username%\%username%.dll" goto password_check

:incorrect_credentials
cls
echo I'm sorry, but those credentials were not found. Please try again.
timeout /t 3 >nul
goto login



:password_check
set /p password_file=<".\GameFiles\Users\%username%\%username%.dll"
if %password_file%==%password% goto start_load


goto incorrect_credentials

:create_account

cls
echo _____________________
echo Create an UBA Account
echo ---------------------
echo.
echo.
echo Please enter your information...
echo.
set /p new_username=Username:


cls
echo _____________________
echo Create an UBA Account
echo ---------------------
echo.
echo.
echo Please enter your information...
echo.
set /p new_password=Password:

if not exist ".\GameFiles\Users\%new_username%" mkdir .\GameFiles\Users\%new_username%

echo %new_password% >".\GameFiles\Users\%new_username%\%new_username%.dll"


echo.
echo Account Successfully Created!
timeout /t 2 >nul
goto login

:start_load
< .\GameFiles\Users\%username%\%username%.sav (
set /p health=     
set /p wep=
set /p arm=
set /p dmg=
set /p enhp=
set /p endmg=
set /p money=
)
goto menu

:menu
set enhp=50
cls
echo.
echo Welcome to "Gamename"!
echo ----------------------
echo Weapon: %wep%
echo  Money: %money%
echo Health: %health%/50
echo ----------------------
echo 1)Fight!
echo 2)Store
echo 3)Heal
echo 4)Save
echo 5)Log off
echo 6)Exit
echo.
set /p menu=COMMAND:

if %menu% == 1 goto fight
if %menu% == 2 goto store
if %menu% == 3 goto heal
if %menu% == 4 goto save
if %menu% == 5 goto logoff
if %menu% == 6 goto exitgame
goto menu

:exitgame
cls
echo Saving progress...
if not exist ".\GameFiles\Users\%username%" mkdir .\GameFiles\Users\%username%

(
echo %health%
echo %wep%
echo %arm%
echo %dmg%
echo %enhp%
echo %endmg%
echo %money%
) >.\GameFiles\Users\%username%\%username%.sav
ping localhost -n 5 >nul
cls
echo Saving progress... Done!
ping localhost -n 3 >nul
cls
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo                                                Exiting game...
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo.
ping localhost -n 5 >nul
exit



:logoff
cls
echo Saving progress...
if not exist ".\GameFiles\Users\%username%" mkdir .\GameFiles\Users\%username%

(
echo %health%
echo %wep%
echo %arm%
echo %dmg%
echo %enhp%
echo %endmg%
echo %money%
) >.\GameFiles\Users\%username%\%username%.sav
ping localhost -n 5 >nul
cls
echo Saving progress... Done!
ping localhost -n 3 >nul
cls
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo                                                Logging off %username%...
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo. 
echo.
ping localhost -n 5 >nul
goto login


:heal
cls
if %money% lss 20 goto nofund
set /a money=%money% - 20
echo You have healed 40 HP!
set /a health= %health% + 40
ping localhost -n 2 >nul
goto menu                      I will fix it next time :) bye!!!!!

:nofund
cls
echo You don't have enought money!
pause
goto menu


:fight
cls
echo.
echo The man hits you -10
echo %naming% hits back dealing %dmg%
set /a health=health-(%Random% %%20)
set /a enhp=enhp-%dmg%-(%Random% %%10)
echo.
echo Your HP: %health%/50  Enemy HP: %enhp%/50
echo.
if %health% LSS 1 goto lose
if %enhp% LSS 1 goto win
echo.
echo To attack again press F
echo To skip attack press  S
set /p sele=COMMAND:

if %sele% == f goto fight
if %sele% == s goto menu
goto menu

:lose
cls
echo You lost :( Please try again
ping localhost -n 2 >nul
exit

:win
cls
echo Congratz! You won +50g
set /a money= %money% + 50
ping localhost -n 3 >nul
goto menu

:store
cls
echo Welcome to "Gamename" Store!
echo ----------------------------
echo 1)Dagger        50g
echo 2)Sword         75g
set /p store=COMMAND

if %money% LSS 50 goto nofund
if %store% == 1 set /a money= %money% - 50
if %store% == 1 set wep=Dagger
if %store% == 1 set /a dmg= %dmg% + 5
if %store% == 1 goto menu
if %money% LSS 75 goto nofund
if %store% == 2 set /a money= %money% - 75
if %store% == 2 set wep=Sword
if %store% == 2 set /a dmg= %dmg% + 7
if %store% == 2 goto menu
goto store

:save
if not exist ".\GameFiles\Users\%username%" mkdir .\GameFiles\Users\%username%

(
echo %health%
echo %wep%
echo %arm%
echo %dmg%
echo %enhp%
echo %endmg%
echo %money%
) >.\GameFiles\Users\%username%\%username%.sav
goto menu
