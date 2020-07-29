if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH /home/ivan/program_files/kotlinc/bin

# Functions

function _check_command
    return (command -v $argv[1] > /dev/null)
end

# Aliases

alias gch='git checkout'
alias gst='git status'
alias gsh='git stash'
alias gcm='git commit'
alias gbr='git branch'
alias gdf='git diff'
alias gdfs='git diff --staged'

alias x-copy='xclip -selection clipboard'
alias x-cp-path='echo -n (pwd) | x-copy'
alias wl-cp-path='echo -n (pwd) | wl-copy'
alias win-cp-path='echo -n (pwd) | clip.exe'
if _check_command xdg-open
    alias open='xdg-open'
end
if _check_command gio
    alias trash='gio trash'
end
