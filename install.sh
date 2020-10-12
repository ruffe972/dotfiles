#!/bin/sh

# TODO adapt for raspberry and future work pc

dotfiles=/mnt/c/Users/Ivan/f/dotfiles

# ln 'target' 'link name'

# Git
ln -sf $dotfiles/gitconfig_common ~/.gitconfig_common
ln -sf $dotfiles/gitconfig_unix ~/.gitconfig

ln -sf $dotfiles/config.fish ~/.config/fish/config.fish
ln -sf $dotfiles/vimrc ~/.vimrc
sudo ln -sf $dotfiles/apt_settings /etc/apt/apt.conf.d/99_my_settings