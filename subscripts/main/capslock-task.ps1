$action = New-ScheduledTaskAction -Execute '"C:\Program Files\AutoHotkey\AutoHotkey.exe"' -Argument '"C:\Program Files\AutoHotkey\ozan-keymap.ahk"'

$trigger = New-ScheduledTaskTrigger -AtLogOn -User "$env:USERNAME"

$principal = New-ScheduledTaskPrincipal -UserId $env:USERNAME -RunLevel Highest

$settings = New-ScheduledTaskSettingsSet -MultipleInstances IgnoreNew -DontStopIfGoingOnBatteries -AllowStartIfOnBatteries
$settings.executionTimeLimit = "PT0S"

Register-ScheduledTask -Action $action -Trigger $trigger -Principal $principal -Settings $settings -TaskPath "\MyTasks" -TaskName "Capslock Remap" -Description "provided to you by Ozan"

cp ./files/ozan-keymap.ahk "C:\Program Files\AutoHotkey\ozan-keymap.ahk" -Force