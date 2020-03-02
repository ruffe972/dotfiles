#!/bin/sh
dnf repoquery --userinstalled --qf "%{name}" > /tmp/dnf_list_installed
grep -F -x -v -f "$DOTFILES/dnf_user_installed_blacklist.txt" /tmp/dnf_list_installed
rm /tmp/dnf_list_installed