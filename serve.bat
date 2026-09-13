@echo off
title Kashif Ali Siddiqui - Profile Server
color 0F
echo.
echo  ===============================================
echo   Kashif Ali Siddiqui — Profile Viewer
echo  ===============================================
echo.

REM Try Python first, then npx serve, then node
python -c "import http.server" 2>nul && (
    echo  [OK] Starting server with Python...
    echo  URL: http://localhost:8000
    echo  Press Ctrl+C to stop
    echo.
    python -m http.server 8000
    goto :eof
)

where npx >nul 2>nul && (
    echo  [OK] Starting server with Node.js (npx serve)...
    echo  URL: http://localhost:3000
    echo  Press Ctrl+C to stop
    echo.
    npx serve -l 3000 .
    goto :eof
)

echo  [ERROR] Neither Python nor Node.js found!
echo  Please install Python or Node.js first.
echo.
pause
