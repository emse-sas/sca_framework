.. py_sca documentation master file, created by
   sphinx-quickstart on Tue Aug 11 14:00:20 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

Welcome to py_sca's documentation!
==================================

************
Introduction
************

py_sca is a Python package that is part of the
`sca_framework <https://github.com/samiBendou/sca_framework>`_ test bench.
It aims to automate all the side-channel attack pipeline within a simple application
and provide tools to validate and improve the attack performances.

The package is able to interface with the SoC to drive the low-level
`command prompt <https://github.com/samiBendou/sca_framework/cmd_sca>`_
that runs on it, allowing to :

* Communicate with the SoC via serial port
* Parse and process received data
* Load and save data on the computer
* Achieve side-channel attack

To do so, the package provides many useful tools

* Scripts to run acquisition and attack
* API to build your own application
* Library to ensure performance

************
Side-channel
************

Despite we attempted to make the package as simple and documented as possible,
you still need preliminary knowledge about side-channel to fully exploit its abilities.

If you are not familiar with side-channel attacks or with the test bench
the `sca_framework wiki <https://github.com/samiBendou/sca_framework/wiki>`_
provides a more general documentation on this topic in order to get you started.

.. toctree::
   :maxdepth: 20
   :caption: Contents

   modules

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
