@echo off
if "%1" neq "called" (
    echo This script should not be run directly.
    exit /b
)

python "%~dp0\python\spamping.py"