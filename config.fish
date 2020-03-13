if not status --is-interactive
    exit 0
end

# -x means 'export to child processes'
set -x VISUAL nvim
set -x EDITOR $VISUAL

set PATH $PATH $HOME/.cargo/bin  # Modifying existing PATH var, so -x is not needed
if test (hostname) = mur-pc-00705
    # Haskell Stack
    set PATH $PATH $HOME/.local/bin

    set PATH $PATH $ANDROID_NDK $ANDROID_HOME/tools $ANDROID_HOME/platform-tools /opt/ImaginationPowerVR_Graphics/PowerVR_Tools/PVRTexTool/CLI/Linux_x86_64/
end
source ~/dotfiles/functions.fish
source ~/dotfiles/aliases.fish
