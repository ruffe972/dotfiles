if not status --is-interactive
    exit 0
end

# Add scripts dir to PATH
if test $hostname = ivan-laptop
    set dotfiles dotfiles
    alias cddw='cd /mnt/d/shared/downloads'
    alias cdl='cd ~/links'
else if test $hostname = nikolai-laptop
    set dotfiles .dotfiles
end

set scripts_dir $HOME/$dotfiles/scripts
set -x PATH $PATH $scripts_dir

source $scripts_dir/mc-wrapper.fish

# jn: Better search
# R: Fix for git diff
# c: Fix for showing small files at the bottom of the screen
set -x LESS Rcj2

if type -q gio
    alias op='gio open'
    alias tra='gio trash'
end
alias mi=micro
alias gst='git status'
alias gsh='git stash'

alias clip-copy='xclip -selection clipboard'
alias copy-path='echo -n (pwd) | clip-copy'
alias ch644='find . -type f -print0 | xargs -0 chmod 0644'

# Overwrite local_dir with remote_dir:
# my-rsync remote_host_name:remote_dir/ local_dir
# Slash is important! It means "Copy not the dir itself, but its children".
alias my-rsync='rsync --archive --verbose --delete --progress'