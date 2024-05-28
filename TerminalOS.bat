@echo off
echo checking for sysfiles
timeout /t 1 >nul
if exist *sysfiles (
cd sysfiles
echo ok
goto checkbatbox
) else (
goto fdne
)


:checkbatbox
cls
echo checking for batbox.exe
timeout /t 1 >nul
if exist *batbox.exe (
echo ok
goto checkkern
) else (
goto fdne
)

:checkkern
cls
echo cheking for kernel
timeout /t 1 >nul
if exist *kernel.bat (
echo ok
goto runkernel
) else (
goto fdne
)

:fdne
echo failed
color fc
echo %time% FATAL: Cannot Find System Files Exiting...
pause
exit

:runkernel
start kernel.bat
exit

