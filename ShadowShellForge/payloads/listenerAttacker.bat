@echo off
:: ========================================================
:: BasicShell Listener
:: Author: Abhi Singh
:: GitHub: https://github.com/anodeus
:: Description: Launches a Netcat listener for incoming shells
:: ========================================================

:: Set console title and color
title BasicShell Listener - Abhi Singh
color 0a
echo ================================================
echo        Welcome to BasicShell Listener
echo        Author: Abhi Singh
echo        GitHub: https://github.com/anodeus
echo ================================================
echo.

:: Ask for port to listen on using PowerShell popup
cd files
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; `
    [Microsoft.VisualBasic.Interaction]::InputBox('Enter port to listen on:', 'BasicShell')}" > listen.tmp
set /p listen=<listen.tmp
del listen.tmp
cd ..

:: Confirm port and start listener
echo [INFO] Starting Netcat listener on port %listen%...
echo.
start cmd /k "echo Listening on port %listen%... & nc -lvnp %listen%"

echo [INFO] Listener launched in a new window.
pause
