Python Setup
============

In the system Python you want to use (e.g. Python 2.7)--

Install [distribute](http://packages.python.org/distribute/):

    $ curl -O http://python-distribute.org/distribute_setup.py
    $ python distribute_setup.py

You can confirm that distribute is installed by running the following
from the system Python interpreter:

    >>> import distribute_setup

Install pip:

    $ easy_install pip

Install [virtualenv](http://www.virtualenv.org/en/latest/#installation).

Install
[virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/install.html).

Note: `virtualenvwrapper` works only with Python 2.x and should be installed
only into the primary Python installation that you will be using (e.g.
MacPorts or your system Python).

Confirm that lines like the following are in your bash profile (e.g.
`~/.profile`):

    export WORKON_HOME=$HOME/dev/PYVENVS/.virtualenvs
    export PROJECT_HOME=$HOME/dev/python
    source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

