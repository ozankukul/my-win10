"Cortana",
"MSN Weather",
"Mail and Calendar",
"Windows Maps",
"Microsoft Messaging",
"Microsoft People",
"Microsoft Solitaire Collection",
"Microsoft Sticky Notes",
"3D Viewer",
"Your Phone",
"Mobile Plans",
"Microsoft Tips",
"Feedback Hub",
"Mixed Reality Portal",
"Xbox",
"Office",
"Skype",
"OneNote",
"Microsoft OneDrive" |
ForEach-Object {
    winget uninstall $_
}

## AppxPackage way of uninstalling
## Note: this fails to uninstall OneDrive
# $list = 
# "Microsoft.549981C3F5F10",
# "Microsoft.BingWeather",
# "Microsoft.WindowsCommunicationsApps",
# "Microsoft.WindowsMaps",
# "Microsoft.Messaging",
# "Microsoft.People",
# "Microsoft.MicrosoftSolitaireCollection",
# "Microsoft.MicrosoftStickyNotes",
# "Microsoft.Microsoft3DViewer",
# "Microsoft.YourPhone",
# "Microsoft.OneConnect",
# "Microsoft.GetStarted",
# "Microsoft.WindowsFeedbackHub",
# "Microsoft.MixedReality.Portal",
# "Microsoft.XboxApp",
# "Microsoft.MicrosoftOfficeHub",
# "Microsoft.SkypeApp",
# "Microsoft.Office.OneNote",
# "Microsoft.OneDrive"

# $list | ForEach-Object {
#     Write-Host "Uninstalling $_" -ForegroundColor Cyan
#     Get-AppxPackage $_ -AllUsers | Remove-AppxPackage
#     Get-AppXProvisionedPackage -Online | Where DisplayNam -like $_ | Remove-AppxProvisionedPackage -Online
# }