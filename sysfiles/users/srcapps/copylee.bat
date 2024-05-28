@echo off
title copylee

set /p usr=Enter The Username:
cd..
copy srcapps\cmmdr.bat %usr%
copy srcapps\calc.bat %usr%
copy srcapps\clk.bat %usr%
exit