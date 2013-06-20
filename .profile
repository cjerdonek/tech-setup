# Bash profile

# TODO: fill this out.

export EDITOR=nano

# virtualenvwrapper configuration.  See--
# http://virtualenvwrapper.readthedocs.org/en/latest/install.html
export WORKON_HOME=$HOME/dev/PYVENVS/.virtualenvs
export PROJECT_HOME=$HOME/dev/python
source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

# Convenience function to set the title of a Terminal tab in Mac OS X.
# See: http://www.devdaily.com/blog/post/mac-os-x/change-title-bar-of-mac-os-x-terminal-window
settitle() {
    echo -n -e "\033]0;${1}\007"
}

# Git tab completion
# See: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
