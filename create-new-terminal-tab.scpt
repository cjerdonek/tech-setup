# AppleScript to create a new Terminal tab.
#
# Usage: osascript create-new-terminal-tab.scpt TITLE DIR
#
# Summary:
#
# (1) opens a new terminal tab in the same window,
# (2) sets the title of the tab, and
# (3) cds into the given directory.
#
# Requires: the settitle() function to be defined in the bash profile.
#
# See also:
#
#   http://stackoverflow.com/questions/7171725/open-new-terminal-tab-from-command-line-mac-os-x
#
on newTab(title, path)
    tell app "System Events"
        tell process "Terminal" to keystroke "t" using command down
    end tell
    tell application "Terminal"
        activate
        do script with command¬
            "settitle " & title & "; " &¬
            "cd " & path¬
        in window 1
    end tell
end newTab

on run argv
    newTab(item 1 of argv, item 2 of argv)
end run
