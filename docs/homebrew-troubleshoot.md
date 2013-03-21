Homebrew Troubleshooting
========================

This documents the troubleshooting steps I took to get
[Homebrew](http://mxcl.github.com/homebrew/) working on my machine.
I was originally using [MacPorts](http://www.macports.org/).

For example, I initially got the following:

    $ brew install git
    Warning: Your Xcode (4.3.1) is outdated
    Please install Xcode 4.6.1.
    Warning: It appears you have MacPorts or Fink installed.
    Software installed with other package managers causes known problems for
    Homebrew. If a formula fails to build, uninstall MacPorts/Fink and try again.
    Error: git-1.8.2 already installed, it's just not linked

Here is what `brew doctor` initially gave me:

    $ brew doctor
    Warning: /usr/local/etc isn't writable.
    This can happen if you "sudo make install" software that isn't managed
    by Homebrew.

    If a brew tries to write a file to this directory, the install will
    fail during the link step.

    You should probably `chown` /usr/local/etc
    Warning: Some directories in /usr/local/share/man aren't writable.
    This can happen if you "sudo make install" software that isn't managed
    by Homebrew. If a brew tries to add locale information to one of these
    directories, then the install will fail during the link step.
    You should probably `chown` them:

        /usr/local/share/man/de
        /usr/local/share/man/de/man1
    Warning: Your Xcode (4.3.1) is outdated
    Please install Xcode 4.6.1.
    Warning: You have MacPorts or Fink installed:
      /opt/local/bin/port

    This can cause trouble. You don't have to uninstall them, but you may want to
    temporarily move them out of the way, e.g.

      sudo mv /opt/local ~/macports
    Warning: You have unlinked kegs in your Cellar
    Leaving kegs unlinked can lead to build-trouble and cause brews that depend on
    those kegs to fail to run properly once built. Run `brew link` on these:

        git
    Warning: /usr/bin occurs before /usr/local/bin
    This means that system-provided programs will be used instead of those
    provided by Homebrew. The following tools exist at both paths:

        2to3

    Consider amending your PATH so that /usr/local/bin
    occurs before /usr/bin in your PATH.

For `Warning: /usr/local/etc isn't writable`:

    $ sudo chown -R whoami /usr/local

Where `whoami` is the result of running `whoami` at the command-line.

For this warning:

    Warning: You have unlinked kegs in your Cellar
    Leaving kegs unlinked can lead to build-trouble and cause brews that depend on
    those kegs to fail to run properly once built. Run `brew link` on these:

        git

Execute:

    $ brew link git

For `Warning: /usr/bin occurs before /usr/local/bin`:

    $ sudo nano /etc/paths

and put `/usr/local/bin` before `/usr/bin`.  You need to reopen your terminal
windows after this step.  TODO: is there a better way?

After doing these steps, I'm leaving off with:

    $ brew doctor
    Warning: "config" scripts exist outside your system or Homebrew directories.
    `./configure` scripts often look for *-config scripts to determine if
    software packages are installed, and what additional flags to use when
    compiling and linking.

    Having additional scripts in your path can confuse software installed via
    Homebrew if the config script overrides a system or Homebrew provided
    script of the same name. We found the following "config" scripts:

        /opt/local/bin/ncurses5-config
        /opt/local/bin/ncursesw5-config
        /opt/local/bin/python-config
        /opt/local/bin/python2-config
        /opt/local/bin/python2.7-config
        /opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/python-config
        /opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/python2-config
        /opt/local/Library/Frameworks/Python.framework/Versions/Current/bin/python2.7-config
    Warning: Your Xcode (4.3.1) is outdated
    Please install Xcode 4.6.1.
    Warning: You have MacPorts or Fink installed:
      /opt/local/bin/port

    This can cause trouble. You don't have to uninstall them, but you may want to
    temporarily move them out of the way, e.g.

      sudo mv /opt/local ~/macports

