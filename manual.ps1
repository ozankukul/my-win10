Write-Host "> manual.ps1" -ForegroundColor magenta

#TODO problematic msvs:
Write-Host "> winget install Microsoft.VisualStudio.2022.Community --silent"
winget install Microsoft.VisualStudio.2022.Community --silent

$list = 
#TODO prompts user
"9NTM2QC6QWS7", #lively wall paper
"9PF4KZ2VN4W9", #translucenttb
"9NHL4NSC67WM", #notepads
"Kingsoft.WPSOffice"

$list | ForEach-Object {
    Write-Host "Installing $_" -ForegroundColor Cyan
    winget install $_ --silent
}

Write-Host "end of manual.ps1"
