Write-Output "Installing Meslo font"
$font = Get-ChildItem -Path ".\Meslo LG S Regular Nerd Font Complete.ttf"
(New-Object -ComObject Shell.Application).Namespace(0x14).CopyHere($font.FullName,0x10)

Write-Output "Updating PowershellGet"
Install-Module PowershellGet -Force -AllowClobber

Write-Output "Installing oh-my-posh"
winget install JanDeDobbeleer.OhMyPosh

Write-Output "Installing Terminal-Icons"
Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Write-Output "Installing PSReadLine"
Install-Module PSReadLine -AllowPrerelease -Force