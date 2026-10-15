@echo off
title Tanuja's Bakery Portfolio Server
echo ==========================================================
echo 🧁 Starting Tanuja's Bakery Portfolio Server...
echo ==========================================================
powershell -ExecutionPolicy Bypass -File "%~dp0server.ps1"
pause
