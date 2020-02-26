# Put this in ~/.profile:
# export DOTFILES=~/"dotfiles"
# . "$DOTFILES/common_profile.sh"

# home todo: remove ~/program_files/fd, cargo install fd-find

if test "$(hostname)" = mur-pc-00705
then
    # Android
    export ANDROID_HOME=/usr/local/bin/android
    export ANDROID_SDK="$ANDROID_HOME"
    export ANDROID_NDK="$ANDROID_HOME/ndk-bundle"
    export ANDROID_NDK_ROOT="$ANDROID_NDK"
    export NDK_ROOT="$ANDROID_NDK"

    PATH="$PATH:$ANDROID_NDK:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/opt/ImaginationPowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/Linux_x86_64/"
fi

PATH="$HOME/.cargo/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"
export QT_STYLE_OVERRIDE=breeze