tech-setup
==========

Miscellaneous environment setup

TextMate
--------

To show hidden folders in the "Project Drawer" (except for `.git`),
go to Preferences > Advanced > Folder References, and then change
"Folder Pattern" to:

    !.*/(\.git|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$

This suggestion is [from here](https://gist.github.com/chrisyour/728445).
