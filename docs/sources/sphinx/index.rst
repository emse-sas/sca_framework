===============================================================
Welcome to the SCA Framework website !
===============================================================

Overview
***************************************************************

SCA Framework is a *Side-Channel Analysis (SCA)* test-bench 
for SoC provided with an FPGA fabric and a CPU.

It consists on a framework that allows to perform fully customizable side-channel attacks :

* Use hardware or software crypto-algorithms
* Capture their power leakage using FPGA based sensors
* Correlate the leakage with a hypothesis model
* Perform key guessing

The purposes of such a test-bench are various :

* Reproduce the remote power side-channel attacks proposed by the current state of the art
* Provide an easy to use framework for SCA training and co-design development
* Provide a flexible framework to test crypto-algorithms and remote sensors
* Automate all the stages of the side-channel attack

This website provide a complete documentation over side-channel attacks.
We explain how our test-bench is designed, under which assumptions it actually works.
We also provide introductive materials for the ones who are not familiar with the side channel topic.


Features
***************************************************************

Our framework is built around three main features :

- **IP** : repository containing various Vivado IP
- **Demo** : FPGA implementation of the attack and C demo
- **Automation** : Python automatic UART dialog and data processing


IP
===============================================================

The IP repository mainly contains two kind of features :

- Crypto-cores
- Sensors

These can be reusable in various FPGA design in order to let create your own leakage acquisition pipeline.

Demo
===============================================================

The demo provides an example FPGA design containing a sensor and a crypto-core communicating with C command prompt application
that runs on the SoC. The demo is able to capture the side-channel leakage and transmit it via UART.

The demo provides a standardized formatœ to communicate side-channel data.
The exact standard is explicited here and can be reused to build your own C acquisition application.

Automation
===============================================================

The automation of the attack is made via Python.
We designed a framework that handles all the stages of the side channel attack within a powerful API.
The main tasks addressed are :

- Automation of UART communication with the demo
- UART to CSV data processing
- Correlation and key guess processing from CSV
- Provide graphical data visualization

It allows to directly drive the demo via multiple Python scripts and a custom library.
It binds with our acquisition standard format to allow you write your own C acquisition.

Documentation
***************************************************************

This website provide scientific documentation and tutorials.
However, each part of the framework described above is provided with its own documentation.

This way you can choose to get started with the tutorials and/or the scientific documentation.
Futhermore, if you want to get deep into the framework, you can do it from the part you are the most comfortable with.

All the sources for this documentation are available on the 
`GitHub repository <https://github.com/samiBendou/sca_framework>`_.

Get Started
***************************************************************

The documentation of the framework is made to be progressive and adapted to both developers and scientists.

If you are not familiar with SCA we provided a various materials to smoothly introduce you to the topic.
If you are already familiar with SCA we encourage you to take a look at our setup review.
If you want to get deep into the setup you can go to the technical documentations of the parts you are interested in. 

Keep in mind that the framework is made to be customizable at each level : you can change the sensors, the crypto-algorithms
and the C acquisition to better fit your experiment.

Summary
***************************************************************

.. toctree::
   :maxdepth: 1
   :caption: Tutorials

   tuto/home

.. toctree::
   :maxdepth: 1
   :caption: Wiki

   wiki/home
