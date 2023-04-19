@echo off
echo Closing Discord...

C:\Windows\System32\TASKKILL.exe /f /im Discord.exe
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe
C:\Windows\System32\TASKKILL.exe /f /im Discord.exe

C:\Windows\System32\TIMEOUT.exe /t 5 /nobreak

echo Installing OpenAsar...
copy /y "%localappdata%\Discord\app-1.0.9012\resources\app.asar" "%localappdata%\Discord\app-1.0.9012\resources\app.asar.backup"

powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9012\resources\app.asar\""

powershell -Command "Invoke-WebRequest https://github.com/GooseMod/OpenAsar/releases/download/nightly/app.asar -OutFile \"$Env:LOCALAPPDATA\Discord\app-1.0.9011\resources\app.asar\""

echo Opening Discord...
start "" "%localappdata%\Discord\Update.exe" --processStart Discord.exe