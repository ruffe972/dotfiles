# git
alias gch='git checkout'
alias gst='git status'
alias gsh='git stash'
alias gcm='git commit'
alias gbr='git branch'
alias gdf='git diff'
alias gdfs='git diff --staged'

# Copy/paste
if _check_command xclip
    alias x-copy='xclip -selection clipboard'
    alias cp-path='echo -n (pwd) | x-copy'
end
if _check_command wl-copy
    alias cp-path='echo -n (pwd) | wl-copy'
end

if _check_command xdg-open
    alias open='xdg-open'
end
if _check_command gio
    alias trash='gio trash'
end

# Overwrite local_dir with remote_dir:
# my-rsync remote_host_name:remote_dir/ local_dir
# Slash is important! It means "Copy not the dir itself, but its children".
alias my-rsync='rsync --archive --verbose --delete --progress'

if test (hostname) = mur-pc-00705
    alias cp-git-head='git log | head; echo -n (git rev-parse --abbrev-ref HEAD)/(git rev-parse HEAD) | x-copy'
    alias anyconnect-gui='/opt/cisco/anyconnect/bin/vpnui'
end