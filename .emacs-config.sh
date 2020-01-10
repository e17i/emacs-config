# this script can be sourced into bash. It provides an alias enabling the
# emacs config git repo to be used with the actual .emacs.d directory.

alias emgit='git --git-dir=$HOME/emacs-config/.git --work-tree=$HOME'
