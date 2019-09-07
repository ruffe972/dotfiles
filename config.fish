if not status --is-interactive
    exit 0
end

alias chmr='
    find . -type f -print0 | xargs -0 chmod 0644;
    find . -type d -print0 | xargs -0 chmod 0755'
alias gst='git status'
alias gsh='git stash'

set local_fish_config ~/.config/fish/local_config.fish
if test -f $local_fish_config
    source $local_fish_config
end

function mc
    set SHELL_PID %self
    set MC_PWD_FILE "/tmp/mc-$USER/mc.pwd.$SHELL_PID"
    /usr/bin/mc -P $MC_PWD_FILE $argv
    if test -r $MC_PWD_FILE
        set MC_PWD (cat $MC_PWD_FILE)
        if test -n "$MC_PWD"
            and test -d "$MC_PWD"
            cd (cat $MC_PWD_FILE)
        end
        rm $MC_PWD_FILE
    end
end