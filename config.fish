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

set PATH $HOME/.cargo/bin $PATH
set -gx VISUAL "code"
set -gx EDITOR $VISUAL

if test (uname) = Linux
    alias open='xdg-open'
    alias trash='gio trash'
    alias clip-cp='xclip -selection clipboard'
    alias cp-path='echo -n (pwd) | clip-cp'

    # Overwrite local_dir with remote_dir:
    # my-rsync remote_host_name:remote_dir/ local_dir
    # Slash is important! It means "Copy not the dir itself, but its children".
    alias my-rsync='rsync --archive --verbose --delete --progress'
end