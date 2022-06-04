# Required: admin rights, winget cli
Write-Host "> $PSCommandPath" -ForegroundColor magenta

#libraries
"./lib/Refresh-Environment.ps1",

#scripts
"./subscripts/main/wsl.ps1",
"./subscripts/main/winget.ps1",
"./subscripts/main/npm.ps1",
"./subscripts/main/pnpm.ps1",
"./subscripts/main/capslock-task.ps1" |

ForEach-Object {
    Write-Host $_ -ForegroundColor magenta
    Invoke-Expression $_
}

Write-Host "end of $PSCommandPath" -ForegroundColor magenta

#TODO
#install rustup
#power-auto system: configure windows settings, startup, fileexp quick access
#power-auto apps: MSVS, notepads, lively
#dotfiles: gitconfig, autohotkey script 

#TODO: powershell config script
