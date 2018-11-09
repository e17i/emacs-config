export PATH=~/Programming/node/node_modules/.bin:$PATH

alias p='cd ..'
alias l='ls -l'
alias la='ls -al'

# see https://news.ycombinator.com/item?id=11070797
alias config='git --git-dir=$HOME/.myconf --work-tree=$HOME'
alias config_clone='git clone --separate-git-dir=$HOME/.myconf $1 $HOME/myconf-tmp'
alias runemacs='/Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs&'
function test_emacs() {
  if ! ps -ae|grep -q [E]macs; then /Applications/MacPorts/Emacs.app/Contents/MacOS/Emacs & sleep 2; fi
}
alias emacsclient='test_emacs; /Applications/MacPorts/Emacs.app/Contents/MacOS/bin/emacsclient -n'

function man() {
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

