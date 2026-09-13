#!/usr/bin/env bash
# Kashif Ali Siddiqui — Profile Server
# Run: ./serve.sh
# Then open http://localhost:8000

set -e

echo ""
echo "==============================================="
echo " Kashif Ali Siddiqui — Profile Viewer"
echo "==============================================="
echo ""

# Try Python first, then npx serve
if command -v python3 &>/dev/null && python3 -c "import http.server" 2>/dev/null; then
    echo "[OK] Starting server with Python..."
    echo "URL: http://localhost:8000"
    echo "Press Ctrl+C to stop"
    echo ""
    python3 -m http.server 8000
elif command -v python &>/dev/null && python -c "import http.server" 2>/dev/null; then
    echo "[OK] Starting server with Python..."
    echo "URL: http://localhost:8000"
    echo "Press Ctrl+C to stop"
    echo ""
    python -m http.server 8000
elif command -v npx &>/dev/null; then
    echo "[OK] Starting server with Node.js (npx serve)..."
    echo "URL: http://localhost:3000"
    echo "Press Ctrl+C to stop"
    echo ""
    npx serve -l 3000 .
else
    echo "[ERROR] Neither Python nor Node.js found!"
    echo "Please install Python or Node.js first."
    echo ""
    exit 1
fi
