# TODO calling wsl command from powershell doesn't load fish config
if not status --is-interactive
    exit 0
end

set -x VISUAL vim
set -x EDITOR $VISUAL

# Aliases

alias g=git
alias x-copy='xclip -selection clipboard'
alias fd=fdfind

# Copy path
alias _pwd-no-new-line='echo -n (pwd)'
alias x-cp-path='_pwd-no-new-line | x-copy'
alias wl-cp-path='_pwd-no-new-line | wl-copy'
alias wsl-cp-path='_pwd-no-new-line | clip.exe'

# exa
alias ls=exa
alias ll='exa -l'
alias la='exa -al'
alias l='exa -1'
