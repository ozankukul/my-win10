Write-Host "> winget.ps1"

Write-Host "> winget source update"
winget source update

#TODO accept msstore agreement
$list = 
"RARLab.WinRAR",
"Git.Git",
"Lexikos.Autohotkey",
"Google.Chrome",
"Telegram.TelegramDesktop",
"Discord.Discord",
"OpenJS.NodeJS.LTS"

$list | ForEach-Object {
    Write-Host "Installing $_" -ForegroundColor Cyan
    winget install $_ --silent
}

Refresh-Environment

Write-Host "end of winget.ps1"