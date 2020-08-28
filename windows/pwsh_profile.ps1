Set-Prompt  # Agnoster theme
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit

# Hide your username@domain when not in a virtual machine for the Agnoster, Fish, Honukai, Paradox and Sorin themes
$DefaultUser = 'Ivan'

# Aliases
Set-Alias -Name g -Value git