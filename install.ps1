# Run as admin

Set-Variable dotfiles -Option Constant -Value $HOME\f\dotfiles

# Symlink 'target' 'link name'
function Symlink {
    New-Item -Force -Path $args[1] -ItemType SymbolicLink -Value $args[0]
}

Symlink $dotfiles\vscode_settings.json ~\AppData\Roaming\Code\User\settings.json
Symlink $dotfiles\gitconfig_common ~\.gitconfig_common
Symlink $dotfiles\gitconfig_windows ~\.gitconfig