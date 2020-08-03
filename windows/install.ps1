# Run as admin
Set-Variable dotfiles -Option Constant -Value C:\Users\Ivan\f\dotfiles
New-Item -Force -Path C:\Users\Ivan\AppData\Roaming\Code\User\settings.json -ItemType SymbolicLink -Value $dotfiles\vscode_settings.json
New-Item -Force -Path C:\Users\Ivan\.gitconfig -ItemType SymbolicLink -Value $dotfiles\windows\gitconfig