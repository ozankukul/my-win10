Write-Host "> winget source update"
winget source update

#TODO accept msstore agreement

# "GoLang.Go.1.19",
"OpenJS.NodeJS.LTS" |

ForEach-Object {
    winget install $_ --silent
}

Refresh-Environment
