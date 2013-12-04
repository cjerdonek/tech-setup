
#------- PATH | start -------------------------#

# Make sure our installed PostgreSQL is used in place of Apple's.
PATH=/Library/PostgreSQL/9.3/bin:$PATH
export PATH

#------- PATH | end ---------------------------#

# This should be the last line of .bash_profile.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
