# this script can be sourced into bash. It provides an alias enabling the
# emacs config git repo to be used with the actual .emacs.d directory.

STORE=/mnt/c/Users/jko/AppData/Roaming

alias emgit='git --git-dir=$STORE/emacs-config/.git --work-tree=$STORE'
