Write-Host "> winget source update"
winget source update

#TODO accept msstore agreement
"RARLab.WinRAR",
"Git.Git",
"Lexikos.Autohotkey",
"Google.Chrome",
"Telegram.TelegramDesktop",
"Discord.Discord",
"OpenJS.NodeJS.LTS" |

ForEach-Object {
    winget install $_ --silent
}

Refresh-Environment
