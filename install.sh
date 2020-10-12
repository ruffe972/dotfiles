#!/bin/sh

# TODO adapt for raspberry and future work pc

dotfiles=/mnt/c/Users/Ivan/f/dotfiles

# ln 'target' 'link name'
ln -sf $dotfiles/config.fish ~/.config/fish/config.fish
ln -sf $dotfiles/vimrc ~/.vimrc
ln -sf $dotfiles/gitconfig_common ~/.gitconfig_common
ln -sf $dotfiles/gitconfig_unix ~/.gitconfig