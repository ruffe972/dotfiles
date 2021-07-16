if not status --is-interactive
    exit 0
end

# todo
# set -x VISUAL vim
# set -x EDITOR $VISUAL

set -x PATH $PATH /opt/homebrew/bin

# Aliases

alias g=git
alias x-copy='xclip -selection clipboard'

# Copy path
alias _pwd-no-new-line='echo -n (pwd)'
alias x-cp-path='_pwd-no-new-line | x-copy'
alias wl-cp-path='_pwd-no-new-line | wl-copy'

# exa
alias ls=exa
alias ll='exa -l'
alias la='exa -al'
alias l='exa -1'
