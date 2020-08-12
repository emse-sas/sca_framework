Welcome to the SCA Framework website !
======================================

Overview
********

SCA Framework is an FPGA based *Side-Channel Analysis (SCA)* test-bench 
for SoC provided with an FPGA fabric and a CPU.

It consists on a framework that allows to perform customizable SCA attacks :

* Import hardware or software crypto-algorithms 
* Capture their power SCA leakage using a FPGA based sensors
* Perform *Correlation Power Analysis (CPA)* on the captured data

The purposes of such a test-bench are various :

* Reproduce the remote power SCA attacks proposed by recent research
* Evaluate the SCA leakage of a large range of crypto-algorithms
* Provide a low-cost platform for SCA training and co-design development

Features
********

=================
Hardware platform
=================

We implemented a hardware design that provides an interface between the sensors and the CPU.

The sensors leverage FPGA digital logic blocks 
available in the slices to capture the SoC voltage fluctuations.


An acquisition interface is provided so the sensors are read at constant frequency.

==================
Driver application
==================

We designed a command prompt that runs on the SoC CPU. 
It allows to test the platform, launch the attacks
and to configure the acquisition and crypto-algorithms.

=================
Attack automation
=================

We designed a Python package that binds with the driver application to automate all the stages
of the side-channel attack.
It allows to directly drive the command prompt via multiple Python scripts and a custom library.

=============
Documentation
=============

This website provide a documentation of the framework but
there is also a wiki to get you introduced to the test-bench and to the SCA related topics.

All the sources for the project are available on the 
`GitHub repository <https://github.com/samiBendou/sca_framework>`_.


Get Started
***********

The documentation comes with examples to understand the different features of the package and
customize step-by-step the side-channel attack.

Despite we attempted to make the framework as simple and documented as possible,
you still need preliminary knowledge about side-channel attacks to fully exploit its abilities.

If you are not familiar with side-channel attacks or with the test bench,
the wiki provides a more general documentation on these topics in order to get you started.

Summary
*******

.. toctree::
   :maxdepth: 1
   :caption: Documentation

   modules

.. toctree::
   :maxdepth: 1
   :caption: Wiki


   wiki/home
