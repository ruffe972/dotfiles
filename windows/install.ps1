# Run as admin
# C:\Users\Ivan\f\dotfiles\windows\install.ps1
Set-Variable dotfiles -Option Constant -Value C:\Users\Ivan\f\dotfiles
New-Item -Force -Path C:\Users\Ivan\AppData\Roaming\Code\User\settings.json -ItemType SymbolicLink -Value $dotfiles\vscode_settings.json