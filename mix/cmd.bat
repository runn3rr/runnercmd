@echo off
echo Configuring...
ping -n 3 127.0.0.1 >nul
cls

title Checking for Python...
echo Checking for Python...

python --version >nul
if "%errorlevel%" neq "0" (
    echo.
    echo Error: Python required to run this script.
    pause >nul
    exit /b
) 

cls

title Checking for pip...
echo Checking for pip...

pip --version >nul
if "%errorlevel%" neq "0" (
    echo.
    echo Error: pip required to run this script.
    pause >nul
    exit /b
) 

cls

title Upgrading pip...
echo Upgrading pip...
python -m pip install --upgrade pip >nul 2>&1
cls

title Installing Requirements...
echo Installing Requirements...
pip install -r "%~dp0\required\files\requirements.txt" >nul 2>&1
cls

chcp 65001 >nul
title Command Prompt ^| Modded by Runner
setlocal EnableDelayedExpansion
for /f "delims=" %%i in ('ver') do set "osver=%%i"
<nul set /p="!osver! "
echo.
echo (c) Microsoft Corporation. All rights reserved.
echo -- Modded by Runner
echo.
cd /d %userprofile%

:input
set /p input=%cd%^>
set "command=%input%"
if /i "%command%"=="exit" ( endlocal && exit )
if /i "%command%"=="credits" ( call "%~dp0\required\commands\credits.bat" called && goto :input )
if /i "%command%"=="spamping" ( call "%~dp0\required\commands\spamping.bat" called && goto :input )
echo %command% | findstr /i "^title " >nul && (echo Cannot use this command.) || (
    echo %command% | findstr /i "^cls " >nul && goto :restart || (
        echo %command% | findstr /i "^cmd " >nul && (echo Cannot use this command.) || (
            cmd /c "%command%" && goto :input
        )
    )
)



goto :input


:restart
cls
echo -- Modded by Runner
echo.
goto :input


endlocal
exit /b