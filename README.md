

## Installation
``` powershell
winget install JanDeDobbeleer.OhMyPosh
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Install-Module PSReadLine -AllowPrerelease -Force
```

## $PROFILE
Add the following commands to your $PROFILE file:
``` powershell
oh-my-posh --init --shell pwsh --config ~/posh/poshconfig.json | Invoke-Expression
Import-Module -Name Terminal-Icons

Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# PowerShell parameter completion shim for the dotnet CLI
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
    param($commandName, $wordToComplete, $cursorPosition)
        dotnet complete --position $cursorPosition "$wordToComplete" | ForEach-Object {
           [System.Management.Automation.CompletionResult]::new($_, $_, 'ParameterValue', $_)
        }
}
```