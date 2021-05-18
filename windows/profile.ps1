function cp-path {
    Set-Clipboard (Get-Location).Path
}

Set-Alias -Name g -Value git
Import-Module posh-git

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete