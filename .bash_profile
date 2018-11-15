#export LC_ALL=de_DE.ISO8859-1
#export LANG=de_DE.ISO8859-1

PATH=$PATH:/opt/local/bin:/Users/joergk/Programming/node/node_modules/.bin
export PATH

alias ls='ls -F'
alias ll='ls -lF'
alias l='ls -lF'
alias la='ls -alF'
alias p='cd ..'

# see https://news.ycombinator.com/item?id=11070797
alias config='git --git-dir=$HOME/.myconf --work-tree=$HOME'
alias config_clone='git clone --separate-git-dir=$HOME/.myconf $1 $HOME/myconf -tmp'
alias config_daemon='git daemon --reuseaddr --base-path=/Users/jko --enable=receive-pack /Users/jko'

alias runemacs='/Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs&'
function test_emacs() {
  if ! ps -ae|grep -q [E]macs; then /Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs & sleep 2; fi
}
alias emacsclient='test_emacs; /Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient -n'

function vman() {
  /usr/bin/man -t "$@" | open -f -a Preview;
}
function man() {
  open x-man-page://$@
}

##
# Your previous /Users/joergk/.bash_profile file was backed up as /Users/joergk/.bash_profile.macports-saved_2015-11-19_at_17:34:43
##

# MacPorts Installer addition on 2015-11-19_at_17:34:43: adding an appropriate PATH variable for use with MacPorts.
export PATH="$PATH:/opt/local/bin:/opt/local/sbin"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/joergk/.bash_profile file was backed up as /Users/joergk/.bash_profile.macports-saved_2016-10-08_at_13:03:29
##

# MacPorts Installer addition on 2016-10-08_at_13:03:29: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

