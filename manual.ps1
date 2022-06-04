#TODO problematic msvs:
Write-Host "> winget install Microsoft.VisualStudio.2022.Community --silent"
winget install Microsoft.VisualStudio.2022.Community --silent

#TODO prevent user prompts or auto-accept user prompts
"9NTM2QC6QWS7", #lively wall paper
"9PF4KZ2VN4W9", #translucenttb
"9NHL4NSC67WM", #notepads
"Kingsoft.WPSOffice" |

ForEach-Object {
    winget install $_ --silent
}
