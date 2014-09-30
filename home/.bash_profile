
#------- PATH | start -------------------------#

oldpath=$PATH

# Put /usr/local/bin before /usr/bin as directed by Homebrew's `brew doctor`.
# Add /usr/local/sbin because that is where RabbitMQ server scripts
# are installed (e.g. rabbitmqctl).
PATH=/usr/local/bin:/usr/local/sbin:$PATH

# Make sure our installed PostgreSQL is used instead of Apple's.
PATH=/Library/PostgreSQL/9.3/bin:$PATH

# Make sure our manually installed git is used instead of Apple's.
# The Mac OS X git installer from http://git-scm.com/ installs git in
# /usr/local/git/bin.  The older Apple version is located in /usr/local/bin.
PATH=/usr/local/git/bin:$PATH

export PATH

#------- PATH | end ---------------------------#

# This should be the last line of .bash_profile.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
