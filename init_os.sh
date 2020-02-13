#!/bin/sh
ln -sf ~/shared_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/shared_dotfiles/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/nvim
ln -sf ~/shared_dotfiles/init.vim ~/.config/nvim/init.vim

case "$(uname)" in
Linux)
    ln -sfT ~/shared_dotfiles/fish_functions ~/.config/fish/functions
    ln -sf ~/shared_dotfiles/vscode_settings.json ~/.config/Code/User/settings.json
    ;;
Darwin)
    echo "Symlink fish_functions manually if needed."
    ln -sf ~/shared_dotfiles/vscode_settings.json ~/"Library/Application Support/Code/User/settings.json"
    ;;
esac

case "$(hostname)" in
ivan-laptop | mur-pc-00705)
    # Unmap Ctrl+Shift+Alt+Up/Down
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
    gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
    gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
    ;;
esac