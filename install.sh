#!/bin/sh

# Leading underscore that means sth like 'this function is private'
_create-links()
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
        echo "todo: symlink fish_functions."
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
fi

_create-links