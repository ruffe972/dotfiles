#!/bin/sh
dotfiles=~/dotfiles
ln -sf "$dotfiles/config.fish" ~/.config/fish/config.fish
ln -sf "$dotfiles/vscodium_settings.json" ~/.config/VSCodium/User/settings.json
if test "$(hostname)" = home-linux-desktop
then
    ln -sf "$dotfiles/home_linux_desktop_user_dirs" ~/.config/user-dirs.dirs
    gsettings set org.gnome.desktop.peripherals.keyboard delay 250
    timedatectl set-local-rtc 1
fi