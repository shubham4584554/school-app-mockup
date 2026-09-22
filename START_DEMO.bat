@echo off
cd /d "%~dp0"
where py >nul 2>&1
if %errorlevel%==0 (
  start "" http://127.0.0.1:8765/index.html
  py -m http.server 8765
) else (
  start "" index.html
)
