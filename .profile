export PATH=~/Programming/node/node_modules/.bin:$PATH

alias p='cd ..'
alias l='ls -l'
alias la='ls -al'

# spacemacs
alias spacemacs='env HOME=/Users/jko/Programming/emacs /Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs'
# clojure emacs
alias clojuremacs='env HOME=/Users/jko/Programming/clojure /Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs'

# see https://news.ycombinator.com/item?id=11070797
alias config='git --git-dir=$HOME/.myconf --work-tree=$HOME'
alias config_clone='git clone --separate-git-dir=$HOME/.myconf $1 $HOME/myconf-tmp'
alias config_daemon='git daemon --reuseaddr --base-path=/Users/jko --enable=receive-pack  /Users/jko'
alias emacs='/Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs'
alias emacsclient='/Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient'

function mman() {
  open x-man-page://$@
}

# MacPorts Installer addition on 2014-06-02_at_15:21:41: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/jko/.profile file was backed up as /Users/jko/.profile.macports-saved_2015-01-12_at_14:46:51
##

# MacPorts Installer addition on 2015-01-12_at_14:46:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# bower
export PATH="~/Programming/node/node_modules/bower/bin:$PATH"

##
# Your previous /Users/jko/.profile file was backed up as /Users/jko/.profile.macports-saved_2015-11-27_at_15:50:30
##

# MacPorts Installer addition on 2015-11-27_at_15:50:30: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/jko/.profile file was backed up as /Users/jko/.profile.macports-saved_2016-10-07_at_17:40:03
##

# MacPorts Installer addition on 2016-10-07_at_17:40:03: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

