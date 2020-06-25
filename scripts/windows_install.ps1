# Run as admin
Set-Variable dotfiles -Option Constant -Value C:\Users\Ivan\f\dotfiles
New-Item -Force -Path C:\Users\Ivan\AppData\Roaming\VSCodium\User\settings.json -ItemType SymbolicLink -Value $dotfiles\vscodium_settings.json