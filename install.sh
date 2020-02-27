#!/bin/sh

_create_links()
{
    ln -sf "$DOTFILES/config.fish" ~/.config/fish/config.fish

    mkdir -p ~/.config/nvim
    ln -sf "$DOTFILES/init.vim" ~/.config/nvim/init.vim

    case "$(uname)" in
    Linux)
        ln -sfT "$DOTFILES/fish_functions" ~/.config/fish/functions
        ln -sf "$DOTFILES/vscode_settings.json" ~/.config/Code/User/settings.json
        ;;
    Darwin)
        ln -sf "$DOTFILES/vscode_settings.json" ~/"Library/Application Support/Code/User/settings.json"
        ;;
    esac
}

if test -x "$(command -v gsettings)"
then
    # Unmap Ctrl+Shift+Alt+Up/Down
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"

    gsettings set org.gnome.desktop.peripherals.keyboard delay 250
fi

_create_links