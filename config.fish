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

set -gx VISUAL micro
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

if test (hostname) = mur-pc-00705
    set -gx ANDROID_HOME /usr/local/bin/android
    set -gx ANDROID_SDK $ANDROID_HOME
    set -gx ANDROID_NDK $ANDROID_HOME/ndk-bundle
    set -gx ANDROID_NDK_ROOT $ANDROID_NDK
    set -gx NDK_ROOT $ANDROID_NDK
    set -gx PATH $PATH $ANDROID_NDK $ANDROID_HOME/tools $ANDROID_HOME/platform-tools /opt/Imagination/PowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/Linux_x86_64/

    function my-cwebp
        cwebp -m 6 -q 94 $argv[1] -o $argv[1]
    end
end