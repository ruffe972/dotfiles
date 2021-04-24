function cp-path {
    Set-Clipboard (Get-Location).Path
}

Import-Module posh-git

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Aliases
Set-Alias -Name g -Value git