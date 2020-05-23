# Run as admin
Set-Variable dotfiles -Option Constant -Value C:\Users\Ivan\f\dotfiles
New-Item -Force -Path C:\Users\Ivan\AppData\Roaming\Code\User\settings.json -ItemType SymbolicLink -Value $dotfiles\vscode_settings.json
New-Item -Force -Path C:\Users\Ivan\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json -ItemType SymbolicLink -Value $dotfiles\windows_terminal.json