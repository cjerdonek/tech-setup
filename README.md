tech-setup
==========

Miscellaneous environment setup

TextMate
--------

To show hidden folders in the "Project Drawer" (except for `.git`),
go to Preferences > Advanced > Folder References, and then change
"Folder Pattern" to:

    !.*/(\.git|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$

Change "File Pattern"

    from: !(/\.(?!htaccess)[^/]*|\.(tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$
    to:   !(/\.(?!\W*)[^/]*|\.(gitkeep|DS_Store|tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$

This suggestion is [from here](https://gist.github.com/chrisyour/728445).
