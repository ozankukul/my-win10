Write-Host "> manual.ps1" -ForegroundColor magenta

Write-Host "winget install Kingsoft.WPSOffice --silent"
winget install Kingsoft.WPSOffice --silent

#TODO problematic msvs:
Write-Host "> winget install Microsoft.VisualStudio.2022.Community --silent"
winget install Microsoft.VisualStudio.2022.Community --silent

#TODO prompts user
Write-Host "> winget install 9NTM2QC6QWS7 --source msstore --silent #lively wallpaper"
winget install 9NTM2QC6QWS7 --source msstore --silent #lively wallpaper

Write-Host "> winget install 9PF4KZ2VN4W9 --source msstore --silent #translucenttb"
winget install 9PF4KZ2VN4W9 --source msstore --silent #translucenttb

Write-Host "> winget install 9NHL4NSC67WM --silent #Notepads App"
winget install 9NHL4NSC67WM --source msstore --silent #Notepads App

Write-Host "end of manual.ps1"
