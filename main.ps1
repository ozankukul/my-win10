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

Write-Host "end of main.ps1";


#TODO
#lively, rustup, set-task
#PAD configure windows settings, powershell, startup, fileexp quick access, 
##git, autohotkey, MSVS, notepads, install lively

#TODO: powershell config script
