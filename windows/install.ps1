# Run as admin

Set-Variable dotfiles -Option Constant -Value ~\f\dotfiles
Set-Variable dotfilesWin -Option Constant -Value $dotfiles\windows

# Symlink 'target' 'link name'
function Symlink {
    New-Item -Force -Path $args[1] -ItemType SymbolicLink -Value $args[0]
}

# Git
Symlink $dotfiles\gitconfig_common ~\.gitconfig_common
Symlink $dotfilesWin\gitconfig ~\.gitconfig

Symlink $dotfiles\vscode_settings.json ~\AppData\Roaming\Code\User\settings.json
Symlink $dotfilesWin\profile.ps1 ~\Documents\PowerShell\Microsoft.PowerShell_profile.ps1