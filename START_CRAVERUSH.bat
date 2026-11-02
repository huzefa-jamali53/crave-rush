@echo off
setlocal
cd /d "%~dp0"
title CraveRush Server
color 0E
echo ================================================================
echo                 CRAVERUSH LOCAL SERVER
echo ================================================================
echo.
echo Keep this window open while using CraveRush.
echo Customer website: http://localhost:8080
echo Admin dashboard:  http://localhost:8080/admin
echo.
echo Starting Python server...
echo.
where py >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    py -3 server.py 8080
    goto :end
)
where python >nul 2>&1
if %ERRORLEVEL% EQU 0 (
    python server.py 8080
    goto :end
)
echo ERROR: Python is not installed or could not be found.
echo Please install Python 3 from https://www.python.org/downloads/ and enable Add Python to PATH.
echo Then run this file again.
:end
echo.
echo CraveRush server has stopped. If an error appeared above, take a screenshot.
pause
endlocal
