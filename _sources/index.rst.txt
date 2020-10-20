Welcome to the SCABox website !
***************************************************************

SCABox is an open-source framework that provide tools and documentation to perform side-channel *acquisitions* and *attacks*.
It provides software, embedded and hardware features gathered in a *hybrid* test-bench.

*Only a Zynq-like board is needed. All the side-channel acquisition is performed inside the SoC*

Overview
---------------------------------------------------------------

Purposes
===============================================================

SCABox aims at popularizing the side-channel analysis by allowing easy experiment, learning and development.
Furthermore it allows to replace oscilloscope based SCA test-bench with only an FPGA SoC.

- Learn side-channel analysis and co-design development
- Reproduce the attacks achieved by state of the art
- Hardware security characterization

The project is thought to be progressive and adapted to both developers and scientists.

If you are not familiar with SCA we provided a various materials in the wiki to smoothly introduce you to the topic.
If you are already familiar with SCA we encourage you to take a look at our tutorials.
If you want to get deep into the setup you can go to the technical documentations of the parts you are interested in. 

How ?
===============================================================

Our bench is based on sensors that leverage FPGA digital logic blocks available in the FPGA slices to capture the SoC voltage fluctuations.
These sensors are employed to eavesdrop the power leakage of a crypto-algorithm running in the FPGA or in the CPU.

To know more about how the bench and the side-channel attacks works take a look at the :ref:`wiki_overview` part of the wiki.

Features
===============================================================

The SCABox test-bench allows to perform various side-channel analysis related tasks.

- Hardware or software crypto-computation
- Power leakage capture based on different sensors
- Leakage data transfer via serial port
- Data export automation serial port to CSV
- Attack automation CSV to key guess
- Correlation and leakage visualization

Documentation
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

SCABox is an open-source project, all the sources are hosted on GitHub and are organized around various repositories

- `IP repository <https://github.com/samiBendou/sca-ip/>`_
- `Acquisition demo <https://github.com/samiBendou/sca-demo-tdc-aes/>`_
- `Attack demo <https://github.com/samiBendou/sca-automation/>`_
- `SCABox website  <https://github.com/samiBendou/sca_framework/>`_

Each of these repository is provided with a technical documentation.
This website provide general documentation around the side-channel topic and the test-bench

- Tutorials to install the bench, customize it and launch attacks
- Wiki to get introduced to the remote side-channel attacks and our setup

This way you can choose to get started with the tutorials and/or the scientific documentation.
Futhermore, if you want to get deep into the framework, you can do it from the part you are the most comfortable with.

Authors
===============================================================

- Joseph Gravellier : Hardware security PhD student 
- Sami Dahoux : Software and Hardware engineer
- Jean Max Dutertre : Head of the hardware security department 

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


