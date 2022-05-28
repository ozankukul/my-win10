# Required: admin rights, winget cli
Write-Host "> main.ps1" -ForegroundColor magenta;

#lib
./lib/Refresh-Environment.ps1;

#scripts
./subscripts/initiative/wsl.ps1;
./subscripts/initiative/winget.ps1;
Refresh-Environment;

./subscripts/initiative/npm.ps1;
Refresh-Environment;
./subscripts/initiative/pnpm.ps1;

./subscripts/initiative/capslock-task.ps1;

Write-Host "end of main.ps1";


#TODO
#install rustup
#power-auto system: configure windows settings, startup, fileexp quick access
#power-auto apps: MSVS, notepads, lively
#dotfiles: gitconfig, autohotkey script 

#TODO: powershell config script
