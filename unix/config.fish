if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH ~/program_files/kotlinc/bin ~/.cargo/bin

set -x VISUAL micro
set -x EDITOR $VISUAL

# Aliases

alias g=git
alias x-copy='xclip -selection clipboard'
alias gcem='git commit --allow-empty-message -m ""'  # TODO remove

# Copy path
alias _pwd-no-new-line='echo -n (pwd)'
alias x-cp-path='_pwd-no-new-line | x-copy'
alias wl-cp-path='_pwd-no-new-line | wl-copy'
alias win-cp-path='_pwd-no-new-line | clip.exe'

# exa
alias lf=exa
alias ll='exa -l'
alias l=ll
alias la='exa -al'