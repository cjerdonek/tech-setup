Python Setup
============

In the system Python you want to use (e.g. Python 3.2)--

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
[virtualenvwrapper](http://virtualenvwrapper.readthedocs.org/en/latest/).

TODO: look into whether the above need to be separately installed for
different system Pythons and MacPorts versions, etc.
