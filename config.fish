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
alias gsh='git stash'
alias gcm='git commit'
alias gdf='git diff'
alias gdfs='git diff --staged'

function my-cwebp
    cwebp -m 6 -q 94 $argv[1] -o $argv[1]
end

if test (uname) = Linux
    alias open='xdg-open'
    alias trash='gio trash'
    alias clip-cp='xclip -selection clipboard'
    alias cp-path='echo -n (pwd) | clip-cp'
end

if test (hostname) = ivan-laptop
    # Overwrite local_dir with remote_dir:
    # my-rsync remote_host_name:remote_dir/ local_dir
    # Slash is important! It means "Copy not the dir itself, but its children".
    alias my-rsync='rsync --archive --verbose --delete --progress'
end