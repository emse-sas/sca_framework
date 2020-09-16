Overview
========

*py_sca* is a Python package that **automates the attack pipeline** 
with a simple application and provides tools to validate and customize the attack.

It is able to interface with the SoC to drive the low-level
command prompt *cmd_sca* that runs on it, allowing to :

* Communicate with the SoC via serial port
* Parse and process received data
* Load and save data on the computer
* Achieve side-channel attack

To do so, the package provides many useful tools :

* *Scripts* to run the acquisition and the attack
* *Library* and *API* to allow customization

Application
===========

.. automodule:: py_sca
   :members:
   :undoc-members:
   :show-inheritance:

.. toctree::
   :maxdepth: 1

   py_sca.app

Library
==========

.. automodule:: py_sca.lib
   :members:
   :undoc-members:
   :show-inheritance:

.. toctree::
   :maxdepth: 1

   py_sca.lib