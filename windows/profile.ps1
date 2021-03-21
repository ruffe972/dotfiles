function cp-path {
    Set-Clipboard (Get-Location).Path
}

Set-Theme Paradox

# Hide your username@domain when not in a virtual machine for the Agnoster, Fish, Honukai, Paradox and Sorin themes
$DefaultUser = 'Ivan'

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadlineOption -BellStyle Visual  # Disable annoying beeps

# Aliases
Set-Alias -Name g -Value git