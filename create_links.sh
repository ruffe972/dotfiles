#!/bin/sh
ln -sf ~/shared_dotfiles/tmux.conf ~/.tmux.conf
ln -sf ~/shared_dotfiles/config.fish ~/.config/fish/config.fish

mkdir -p ~/.config/nvim
ln -sf ~/shared_dotfiles/init.vim ~/.config/nvim/init.vim

ln -sfT ~/shared_dotfiles/fish_functions ~/.config/fish/functions

case "$(uname)" in
Linux)
    ln -sf ~/shared_dotfiles/vscode_settings.json ~/.config/Code/User/settings.json
    ;;
Darwin)
    echo "todo"
    ;;
esac