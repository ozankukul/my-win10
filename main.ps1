# Required: admin rights, winget cli
Write-Host "> $PSCommandPath" -ForegroundColor magenta

# libraries
"./lib/Refresh-Environment.psm1",
"./lib/Win10.psm1" |

ForEach-Object {
    Write-Host $_ -ForegroundColor magenta
    Import-Module $_
}

# scripts
"./subscripts/main/windows-config/powershell.ps1",
"./subscripts/main/windows-config/uninstaller.ps1",
"./subscripts/main/winget.ps1",
"./subscripts/main/capslock-task.ps1" |

ForEach-Object {
    Write-Host $_ -ForegroundColor magenta
    Invoke-Expression $_
}

# developer scripts
# "./subscripts/developer/winget.ps1",
# "./subscripts/developer/npm.ps1"
# "./subscripts/developer/pnpm.ps1",
# "./subscripts/developer/wsl.ps1",
# "./subscripts/developer/gitconfig.ps1" |

# ForEach-Object {
#     Write-Host $_ -ForegroundColor magenta
#     Invoke-Expression $_
# }

Write-Host "end of $PSCommandPath" -ForegroundColor magenta

#TODO
#power-auto system configuration for: startup, fileexp quick access
#power-auto app configuration for: MSVS, notepads, lively
#dotfiles: .ahk
