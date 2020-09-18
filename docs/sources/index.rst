Welcome to the scack website !
***************************************************************

scack is an open-source framework that provide tools and documentation to perform side-channel *acquisitions* and *attacks*.
It provides software, embedded and hardware features gathered in a *hybrid* test-bench.

Overview
---------------------------------------------------------------

Purposes
===============================================================

scack aims at popularizing the side-channel analysis by allowing easy experiment, learning and development

- Learn side-channel analysis and co-design development
- Reproduce the attacks achieved by state of the art
- Evaluate crypto-algorithms sensitivity
- Evaluate sensors efficiency

The project is thought to be progressive and adapted to both developers and scientists.

If you are not familiar with SCA we provided a various materials in the wiki to smoothly introduce you to the topic.
If you are already familiar with SCA we encourage you to take a look at our tutorials.
If you want to get deep into the setup you can go to the technical documentations of the parts you are interested in. 

Features
===============================================================

The scack test-bench allows to perform various side-channel analysis related tasks.

- Hardware or software crypto-computation
- Power leakage capture based on different sensors
- Leakage data transfer via serial port
- Data export automation serial port to CSV
- Attack automation CSV to key guess
- Correlation and leakage visualization

The scack project is built around three main GitHub repository

- **sca-ip** : IP cores and corresponding drivers
- **sca-demo-tdc-aes** : Demo embedded acquisition application 
- **sca-automation** : Acquisition and attack automation

Each of these repository is provided with a technical documentation.
This website provide various documentation around the side-channel topic and the test-bench

- Tutorials to get started, launch attacks and customize the bench
- Wiki to get introduced to the remote side-channel attacks and our setup

This way you can choose to get started with the tutorials and/or the scientific documentation.
Futhermore, if you want to get deep into the framework, you can do it from the part you are the most comfortable with.

All the sources for this documentation are available on the 
`GitHub repository <https://github.com/samiBendou/sca_framework>`_.

Summary
===============================================================

.. toctree::
   :maxdepth: 1
   :caption: Tutorials

   tuto/home

.. toctree::
   :maxdepth: 1
   :caption: Wiki

   wiki/home
