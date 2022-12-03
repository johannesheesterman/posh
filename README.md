

## Installation
1. Run the following command as administrator:
``` powershell
./install.ps1
```

2. Add the following commands to your $PROFILE file:
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

3. Update VSCode settings
```json
"profiles": 
{
    "defaults": {
       "font": {
            "face": "MesloLGS Nerd Font",
            "size": 10
        }
    },
}    
```