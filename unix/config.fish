if not status --is-interactive
    exit 0
end

# Modifying existing PATH var, so -x is not needed
set PATH $PATH /snap/bin

# Functions

function rg
    if test -n "$RANGER_LEVEL"
        exit
        return
    end
    set dir (mktemp -t ranger_cd.XXX)
    ranger --choosedir=$dir
    cd (cat $dir) $argv
    rm $dir
    commandline -f repaint
end

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

if _check_command xclip
    alias x-copy='xclip -selection clipboard'
    alias x-cp-path='echo -n (pwd) | x-copy'
end
if _check_command xdg-open
    alias open='xdg-open'
end
if _check_command gio
    alias trash='gio trash'
end
