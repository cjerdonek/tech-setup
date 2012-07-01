# Bash profile

# TODO: fill this out.

# Convenience function to set the title of a Terminal tab in Mac OS X.
# See: http://www.devdaily.com/blog/post/mac-os-x/change-title-bar-of-mac-os-x-terminal-window
settitle() {
    echo -n -e "\033]0;${1}\007"
}

# Git tab completion
# See: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.sh
