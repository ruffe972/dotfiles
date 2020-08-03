#!/bin/sh
dotfiles=~/dotfiles
if test "$(hostname)" = home-windows
then
    dotfiles=/mnt/c/Users/Ivan/f/dotfiles
fi
ln -sf "$dotfiles/unix/config.fish" ~/.config/fish/config.fish
ln -sf "$dotfiles/unix/gitconfig" ~/.gitconfig