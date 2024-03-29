# Make 'Cascadia Mono' an available Console font
Set-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont' 000 'Cascadia Mono'

@(`
"HKCU:\Console\%SystemRoot%_System32_bash.exe",`
"HKCU:\Console\%SystemRoot%_System32_WindowsPowerShell_v1.0_powershell.exe",`
"HKCU:\Console\%SystemRoot%_SysWOW64_WindowsPowerShell_v1.0_powershell.exe",`
"HKCU:\Console\Windows PowerShell (x86)",`
"HKCU:\Console\Windows PowerShell",`
"HKCU:\Console"`
) | ForEach {
    If (!(Test-Path $_)) {
        New-Item -path $_ -ItemType Folder | Out-Null
    }
    # Dimensions of window, in characters: 8-byte; 4b height, 4b width. Max: 0x7FFF7FFF (32767h x 32767w)
    Set-ItemProperty $_ "WindowSize"           0x00180078 # 24h x 120w
    # Dimensions of screen buffer in memory, in characters: 8-byte; 4b height, 4b width. Max: 0x7FFF7FFF (32767h x 32767w)
    Set-ItemProperty $_ "ScreenBufferSize"     0x0BB80078 # 3000h x 120w
    # Percentage of Character Space for Cursor: 25: Small, 50: Medium, 100: Large
    Set-ItemProperty $_ "CursorSize"           25
    # Name of display font
    Set-ItemProperty $_ "FaceName"             "Cascadia Mono"
    # Font Family: Raster: 0, TrueType: 54
    Set-ItemProperty $_ "FontFamily"           54
    # Dimensions of font character in pixels, not Points: 8-byte; 4b height, 4b width. 0: Auto
    Set-ItemProperty $_ "FontSize"             0x00140000 # 20px height x auto width
    # Boldness of font: Raster=(Normal: 0, Bold: 1), TrueType=(100-900, Normal: 400)
    Set-ItemProperty $_ "FontWeight"           400
    # Number of commands in history buffer
    Set-ItemProperty $_ "HistoryBufferSize"    50
    # Discard duplicate commands
    Set-ItemProperty $_ "HistoryNoDup"         1
    # Typing Mode: Overtype: 0, Insert: 1
    Set-ItemProperty $_ "InsertMode"           1
    # Enable Copy/Paste using Mouse
    Set-ItemProperty $_ "QuickEdit"            1
    # Background and Foreground Colors for Window: 2-byte; 1b background, 1b foreground; Color: 0-F
    Set-ItemProperty $_ "ScreenColors"         0x0F
    # Background and Foreground Colors for Popup Window: 2-byte; 1b background, 1b foreground; Color: 0-F
    Set-ItemProperty $_ "PopupColors"          0xF0
    # Adjust opacity between 30% and 100%: 0x4C to 0xFF -or- 76 to 255
    Set-ItemProperty $_ "WindowAlpha"          0xE5
}

# Set powershell profile for custom prompt etc.
md (Split-Path -Path $PROFILE) -Force
cp .\files\profile.ps1.config $PROFILE -Force

