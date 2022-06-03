$list = 
"Microsoft.BingWeather",
"Microsoft.WindowsCommunicationsApps",
"Microsoft.GetStarted",
"Microsoft.WindowsMaps",
"Microsoft.Messaging",
"Microsoft.People",
"Microsoft.MicrosoftSolitaireCollection",
"Microsoft.MicrosoftStickyNotes",
"Microsoft.YourPhone",
"Microsoft.WindowsFeedbackHub",
"Microsoft.MixedReality",
"Microsoft.SkypeApp",
"Microsoft.Office.OneNote"

$list | ForEach-Object {
    Write-Host "Deleting $_" -ForegroundColor Cyan
    Get-AppxPackage $_ -AllUsers | Remove-AppxPackage
    Get-AppXProvisionedPackage -Online | Where DisplayNam -like $_ | Remove-AppxProvisionedPackage -Online
}