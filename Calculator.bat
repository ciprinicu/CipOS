@echo off
title Calculator
:top
cls
echo Welcome to Batch Calculator
set /p fn=Please enter first number:
cls
set /p sn=Now enter second number:
cls
set /p math=What you what to do, type any of the operator ( -, +, * or /):
cls
set /a ans=%fn%%math%%sn%
echo Your answer is: %ans%
pause>nul
echo Done!
echo Press any key to start again!
pause>nul
goto top