@echo off 
powershell Invoke-WebRequest -Uri https://www.autohotkey.com/download/ahk-install.exe -OutFile ahk.exe
ahk.exe /S
:: Above downloads AHK and installs it silently
del ahk.exe 
:: Removes ahk.exe after download and install.
cd %appdata%\Microsoft\Windows\Start Menu\Programs\Startup
:: Goes to startup folder. 
powershell Invoke-WebRequest -Uri https://raw.githubusercontent.com/Amrinder-S/Fix-Ctrl-Backspace/main/FixCtrlPlusBackspace.ahk -OutFile FixCtrlBackspace.ahk
:: Downloads the script in startup folder.
FixCtrlBackspace.ahk
:: Runs the script
