@echo off
:login
set /p usrnme=Username: 
if exist *users (
cd users
) else (
mkdir users
cd users
)
if exist *%usrnme% (
cd %usrnme%
) else (
mkdir %usrnme%
cd %usrnme%
)
cd..
cd srcapps
start copylee.bat
cd..
cd %usrnme%
goto checkfiles

:checkfiles
if exist *cmmdr.bat echo ok
if exist *calc.bat echo ok
if exist *clk.bat echo ok
goto home

:home
cls
if exist *usersetts.bat (
call usersetts.bat
) else (
echo color a >> usersetts.bat
call usersetts.bat
)

cls
Title Home
echo Current Directory:%CD%
echo.
echo.
echo APPS:
echo.
echo 1) Clock 2) Calculator 3) Commander
choice /c 123 /n

if %ERRORLEVEL%==1 call clk.bat
if %ERRORLEVEL%==2 call calc.bat
if %ERRORLEVEL%==3 call cmmdr.bat
goto home
