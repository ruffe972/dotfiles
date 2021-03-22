function cp-path {
    Set-Clipboard (Get-Location).Path
}

Set-Theme Paradox

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -BellStyle Visual  # Disable annoying beeps

# Aliases
Set-Alias -Name g -Value git