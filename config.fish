if not status --is-interactive
    exit 0
end

#alias chmr='
#    find . -type f -print0 | xargs -0 chmod 0644;
#    find . -type d -print0 | xargs -0 chmod 0755'
alias gst='git status'
alias gsh='git stash'

set local_fish_config ~/.config/fish/local_config.fish
if test -f $local_fish_config
    source $local_fish_config
end