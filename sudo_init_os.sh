#!/bin/sh
case "$(hostname)" in
ivan-home-linux)
    sudo dnf remove gnome-terminal
    ;;
esac