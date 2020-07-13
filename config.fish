if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH /snap/bin

source ~/dotfiles/functions.fish
source ~/dotfiles/aliases.fish
