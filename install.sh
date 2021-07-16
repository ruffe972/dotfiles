#!/bin/sh

dotfiles=~/Dotfiles

# ln 'target' 'link name'

ln -sf $dotfiles/gitconfig ~/.gitconfig
ln -sf $dotfiles/config.fish ~/.config/fish/config.fish
ln -sf $dotfiles/vscode_settings.json "$HOME/Library/Application Support/Code/User/settings.json"
# sudo ln -sf $dotfiles/apt_settings /etc/apt/apt.conf.d/99_my_settings