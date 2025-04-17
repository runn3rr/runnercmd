@echo off
if "%1" neq "called" (
    echo This script should not be run directly.
    exit /b
)

echo.
echo -- Modded Command List --
echo.
echo mods - Shows this list.
echo spamping - Pings 50 times on 50 different threads.
echo credits - Shows credits.
echo.