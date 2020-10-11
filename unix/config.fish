# TODO unite wsl and windows dotfiles dir
# todo maybe I should exclude some files from dotfiles dir

if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH ~/program_files/kotlinc/bin ~/.cargo/bin

set -x VISUAL nvim
set -x EDITOR $VISUAL

# Aliases
# TODO convert some aliases to abbrs

alias g=git
alias x-copy='xclip -selection clipboard'
alias gcem='git commit --allow-empty-message -m ""'  # TODO remove
alias fd=fdfind

# Copy path
alias _pwd-no-new-line='echo -n (pwd)'
alias x-cp-path='_pwd-no-new-line | x-copy'
alias wl-cp-path='_pwd-no-new-line | wl-copy'
alias win-cp-path='_pwd-no-new-line | clip.exe'

# exa
alias ls=exa
alias ll='exa -l'
alias la='exa -al'
alias l='exa -1'
