"""Python application and high-level API

This package is a Python application that provides all the needed
features for side-channel attack from an SoC.
The application is composed of several scripts that can be launched
via the command prompt.

Examples
--------
.. code-block:: shell

    $ python setup.py
    $ python acquire.py 256 com5
    $ python clean.py -c -a

The scripts perform the two following tasks :

* Acquire data from SoC using ``acquire.py``
* Attack the data using ``attack.py``

The package also provides an API in order
to allow you code your own acquisition and attack scripts.

Scripts's help and usage can be printed using
the ``help`` builtin function.

"""
