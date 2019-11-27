# make nologin bash behave like login
# a login shell executes /etc/profile, then ~./bash_profile|~/.bash_login|~./profile
# a nologin shell just executes ~./bashrc

. /etc/profile
. ~/.profile
