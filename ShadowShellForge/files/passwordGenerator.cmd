@echo off
:: ========================================================
:: Generator Password Reveal
:: Author: Abhi Singh
:: Description: Reveals the access key in hacker-style animation
:: ========================================================

title Generator Password Reveal - Abhi Singh
color 0a
setlocal enabledelayedexpansion

:: Actual password
set "key=Flag{@bh151ngh}"

:: Banner
echo ========================================================
echo          Generator Access Key Reveal
echo          Author: Abhi Singh
echo ========================================================
echo.

:: Initialize empty variable for display
set "display="

:: Loop through each character in the key
for /l %%i in (0,1,%=len:key%) do (
    set "char=!key:~%%i,1!"
    
    :: Print random letters before showing the real character
    for /l %%j in (1,1,10) do (
        set /a "rand=!random! %% 26 + 65"
        cmd /c exit /b !rand! >nul
        <nul set /p ="%random%" 2>nul
        <nul set /p =" " 2>nul
    )
    
    :: Append actual character
    set "display=!display!!char!"
    <nul set /p ="!display!" 2>nul
    echo.
    timeout /t 0.2 >nul
)

echo.
echo [INFO] Access Key fully revealed: %key%
echo.
pause
