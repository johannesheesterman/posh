

## Installation
``` powershell
winget install JanDeDobbeleer.OhMyPosh
Install-Module -Name Terminal-Icons -Repository PSGallery
```

## $PROFILE
Add the following commands to your $PROFILE file:
``` powershell
oh-my-posh --init --shell pwsh --config ~/posh/poshconfig.json | Invoke-Expression
Import-Module -Name Terminal-Icons
```