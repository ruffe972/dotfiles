# Run as admin
Set-Variable dotfiles -Option Constant -Value ~\f\dotfiles
New-Item -Force -Path ~\AppData\Roaming\Code\User\settings.json -ItemType SymbolicLink -Value $dotfiles\vscode_settings.json
New-Item -Force -Path ~\.gitconfig -ItemType SymbolicLink -Value $dotfiles\windows\gitconfig