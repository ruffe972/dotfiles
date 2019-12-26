#!/bin/sh
ln -sf ~/shared_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/shared_dotfiles/config.fish ~/.config/fish/config.fish
ln -sfT ~/shared_dotfiles/fish_functions ~/.config/fish/functions
if [ "$(uname)" = Linux ]; then
    ln -sf ~/shared_dotfiles/vscode_settings.json ~/.config/Code/User/settings.json
fi