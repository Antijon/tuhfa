@echo off
set "F=%~dp0index.html"
set "U=file:///%F:\=/%"
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" ( start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%U%" & exit /b )
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" ( start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%U%" & exit /b )
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" ( start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%U%" & exit /b )
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" ( start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" --app="%U%" & exit /b )
start "" "%F%"
