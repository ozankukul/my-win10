"./subscripts/developer/reboot/wsl.ps1" |

ForEach-Object {
    Write-Host $_ -ForegroundColor magenta
    Invoke-Expression $_
}