if not status --is-interactive
    exit 0
end

# -x means 'export to child processes'
set -x VISUAL nvim
set -x EDITOR $VISUAL

set PATH $PATH $HOME/.cargo/bin  # Modifying existing PATH var, so -x is not needed
source ~/dotfiles/functions.fish
source ~/dotfiles/aliases.fish
