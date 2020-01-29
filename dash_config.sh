#!/bin/sh

export PATH="$HOME/.cargo/bin:$PATH"
export VISUAL=micro
export EDITOR="$VISUAL"

case "$(hostname)" in
mur-pc-00705)
    # android
    export ANDROID_HOME=/usr/local/bin/android
    export ANDROID_SDK="$ANDROID_HOME"
    export ANDROID_NDK="$ANDROID_HOME/ndk-bundle"
    export ANDROID_NDK_ROOT="$ANDROID_NDK"
    export NDK_ROOT="$ANDROID_NDK"

    export PATH="$PATH:$ANDROID_NDK:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools:/opt/ImaginationPowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/Linux_x86_64/"
    ;;
ivan-laptop)
    export GEM_HOME="$HOME/.ruby/"
    export PATH="$PATH:$HOME/.ruby/bin"
    ;;
esac
