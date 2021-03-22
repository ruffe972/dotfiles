function cp-path {
    Set-Clipboard (Get-Location).Path
}

Import-Module posh-git

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -BellStyle Visual  # Disable annoying beeps

# Aliases
Set-Alias -Name g -Value git