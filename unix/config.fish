if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH ~/program_files/kotlinc/bin ~/.cargo/bin

set -x VISUAL micro
set -x EDITOR $VISUAL

# Functions

function _check_command
    return (command -v $argv[1] > /dev/null)
end

# Aliases

alias x-copy='xclip -selection clipboard'

# Git
alias g=git
alias gcem='git commit --allow-empty-message -m ""'

# Copy path
alias x-cp-path='echo -n (pwd) | x-copy'
alias wl-cp-path='echo -n (pwd) | wl-copy'
alias win-cp-path='echo -n (pwd) | clip.exe'

# exa
alias lf=exa
alias l='exa -l'
alias ll='exa -l'
alias la='exa -al'

# Gnome
if _check_command gio
    alias trash='gio trash'
end
