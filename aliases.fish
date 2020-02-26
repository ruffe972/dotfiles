# chmod
alias set-def-file-perm-rec='find . -type f -print0 | xargs -0 chmod 0644'
alias set-def-dir-perm-rec='find . -type d -print0 | xargs -0 chmod 0755'
alias set-def-perm-rec='set-def-file-perm-rec;set-def-dir-perm-rec'

# git
alias gch='git checkout'
alias gst='git status'
alias gsh='git stash'
alias gcm='git commit'
alias gbr='git branch'
alias gdf='git diff'
alias gdfs='git diff --staged'

# Copy/paste
if _check-command xclip
    alias clip-cp='xclip -selection clipboard'
end
if _check-command wl-copy
    echo "todo" # todo
end
alias cp-path='echo -n (pwd) | clip-cp'

if _check-command xdg-open
    alias open='xdg-open'
end
if _check-command gio
    alias trash='gio trash'
end

# Overwrite local_dir with remote_dir:
# my-rsync remote_host_name:remote_dir/ local_dir
# Slash is important! It means "Copy not the dir itself, but its children".
alias my-rsync='rsync --archive --verbose --delete --progress'