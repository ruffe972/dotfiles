if not status --is-interactive
    exit 0
end

# chmod
alias set-def-file-perm-rec='find . -type f -print0 | xargs -0 chmod 0644'
alias set-def-dir-perm-rec='find . -type d -print0 | xargs -0 chmod 0755'
alias set-def-perm-rec='set-def-file-perm-rec;set-def-dir-perm-rec'

# git
alias gch='git checkout'
alias gst='git status'
alias gbr='git branch'
alias gsh='git stash'
alias gcm='git commit'

set local_fish_config ~/.config/fish/local_config.fish
if test -f $local_fish_config
    source $local_fish_config
end