#!/bin/sh

_create_links()
{
    dotfiles=~/dotfiles

    mkdir -p ~/.config/nvim
    ln -sf "$dotfiles/init.vim" ~/.config/nvim/init.vim
    
    mkdir -p ~/.config/environment.d
    ln -sf "$dotfiles/wayland_environment.conf" ~/.config/environment.d/environment.conf

    ln -sf "$dotfiles/config.fish" ~/.config/fish/config.fish
    ln -sfT "$dotfiles/fish_functions" ~/.config/fish/functions
    ln -sf "$dotfiles/vscodium_settings.json" ~/.config/VSCodium/User/settings.json
    ln -sf "$dotfiles/mpv_input.conf" ~/.config/mpv/input.conf

    if test "$(hostname)" = home-linux-desktop
    then
        ln -sf "$dotfiles/home_linux_desktop_user_dirs" ~/.config/user-dirs.dirs
    fi
}

if test -x "$(command -v gsettings)"
then
    gsettings set org.gnome.desktop.peripherals.keyboard delay 250
fi

_create_links