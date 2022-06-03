Write-Host "> winget.ps1";

Write-Host "> winget source update;";
winget source update;

#TODO accept msstore agreement

Write-Host "> winget install RARLab.WinRAR --silent;";
winget install RARLab.WinRAR --silent;

Write-Host "> winget install Git.Git --silent;";
winget install Git.Git --silent;

Write-Host "> winget install Lexikos.Autohotkey --silent;";
winget install Lexikos.Autohotkey --silent; 

Write-Host "> winget install Telegram.TelegramDesktop --silent;";
winget install Telegram.TelegramDesktop --silent;

Write-Host "> winget install Discord.Discord --silent;";
winget install Discord.Discord --silent;

Write-Host "> winget install Microsoft.VisualStudioCode --silent;";
winget install Microsoft.VisualStudioCode --silent;

Write-Host "> winget install OpenJS.NodeJS.LTS --silent;";
winget install OpenJS.NodeJS.LTS --silent;

Write-Host "end of winget.ps1";

Refresh-Environment