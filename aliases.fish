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
