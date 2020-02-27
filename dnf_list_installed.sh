#!/bin/sh
dnf repoquery --userinstalled --qf "%{name}" > /tmp/dnf_list_installed
grep -F -x -v -f "$DOTFILES/dnf_not_manually_installed.txt" /tmp/dnf_list_installed
rm /tmp/dnf_list_installed