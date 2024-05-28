@echo off
title cmmd Command Utility

:cmmd
set /p inp=: 
title cmmd Command Utility - %inp%
%inp%
echo.
goto cmmd