Tuto #0 - Run the Pre-Built Demo
===============================================================

**Duration:** 20-30 min

Goals
***************************************************************

In this tutorial you will conduct your first FPGA-based side-channel attack in three steps:

1. Download the Application Image
2. Launch the Demo
3. Collect the AES Leakage

**Summary:** This tutorial do not require any software tool installation or programming. It uses a pre-built boot image available on github that can be loaded into a micro SD card to launch the demo. The image contains an FPGA bitstream that embeds time-to-digital converter sensors (TDC) and a hardware AES. It also contains a software program that we will serve as an interface to communicate with your computer through serial port. At the end of this tutorial you will conduct a correlation power analysis attack using the AES leakage collected using TDCs.

Requirements
***************************************************************

- A Zynq board
- A micro SD card
- A micro USB cable 
- Any terminal emulator such as PuTTY, TeraTerm or picocom

.. note::
	Because it uses pre-built images, this tutorial is board dependent. 
	Currently, two boards are supported: Digilent Zybo z7-10 and Digilent Zybo z7.

.. image:: media/img/zybo_setup.jpg
   :width: 400px
   :alt: Zybo setup
   :align: center

Emulator setup
***************************************************************

The terminal emulator allows to communicate via UART with the SoC.
It must be configured properly in order to work and allow command typing.
Bellow is given the emulator configuration used :

- port is        : /dev/ttyUSBx
- flowcontrol    : none
- baudrate is    : 921600
- parity is      : none
- databits are   : 8
- stopbits are   : 1
- local echo is  : yes

.. note::
	- If your terminal provide it, you can also use the local line edit.
	- Port name can vary according to your OS, eg. on windows its COMx 

Tutorial 
***************************************************************

The tutorial starts here

1. Download the Application Image
---------------------------------------------------------------

1. Download the boot image that matches your board reference in `here <link https://github.com/emse-sas/sca-demo-tdc-aes/image>`_  
2. Insert the SD card in your computer and format it. You can follow these `instructions <link https://dzone.com/articles/create-a-bootbin-program-an-sd-card-and-boot-a-zc7>`_ to format the card
3. Once formatted, copy and paste the BOOT.bin file into the SD card and eject it.

2. Launch the Demo
---------------------------------------------------------------

1. Insert the SD card into the Zybo board slot.
2. Place the jumper 5 in SD boot position
3. Connect the Zybo to your computer using a USB cable 
4. Power on the Zybo and wait for the green led "DONE" to illuminate, the board is ready.

.. note::
	If the "DONE" led is off, press the "PS-SRST" button. If it remains off the image is probably not compatible with your board, or the SD card is not supported. Please check the requirement section at the beginning of this tutorial.

.. image:: media/img/zybo_programmed.jpg
   :width: 400px
   :alt: Zybo programmed
   :align: center

5. Start the serial communication with the parameters given in the **Emulator setup** section at the beginning of this tutorial
6. Press the "PS-SRST" button, the following welcome message should appear

.. image:: media/img/SCA_Putty1.png
   :width: 500
   :alt: FIFO output simple
   :align: center

You can now use the available serial commands to perform AES encryptions, side-channel acquisitions, etc. If you want to learn more about available commands please follow the `Use the Framework <link https://emse-sas.github.io/sca_framework/tuto/acquisition.html>`_ tutorial.

3. Collect the AES Leakage
---------------------------------------------------------------

To facilitate the data acquisition and visualisation SCAbox comes with a simple application built in python. This application connects directly to the Zynq board through a serial communication and can exchange data and commands with the device.

.. note::
	The project is compatible with Python 3.8 and latter. It is platform independent.

1. To install the automation tool you must clone the sources from GitHub and install the pip requirements:

.. code-block:: shell

	$ git clone https://github.com/emse-sas/sca-automation
	$ cd sca-automation
	$ pip3 install -r requirements.txt

2. Then launch the main.py python with your board serial port in argument.

.. code-block:: shell

	$ cd sca-automation/app
	$ sudo python3 main.py -t /dev/ttyUSB1

The following view should appear:

.. image:: media/img/SCA_Automation1.png
   :width: 800
   :alt: FIFO output simple
   :align: center

3. Select the following parameters   

- Iteration: 500
- Chunk: 20
- Mode: HW
- Model: Inv Sbox R10

This will launch 500*20 = 10000 AES acquisitions and compute CPA on the last round. 

4. Press Launch

The AES leakage can be easily recognized thanks to its ten characteristic rounds that create high power consumption spikes. The magnitude spectrum
plotted in the bottom indicates the leakage amplitude at each frequency. 

.. image:: media/img/SCA_Leakage1.png
   :width: 800
   :alt: AES Leakage results
   :align: center

5. Select Correlation

Two plots illustrate the CPA attack results for a specific key byte (here byte 1). On the top, we can see the correct key candidate (in red) emerging from the other candidates (in gray) after less than 100 acquisitions. On the bottom the temporal representation indicates that the key leaks around the sample 300. The actual implementation of the LastRound CPA works only on the 4 first bytes of the AES. 

.. image:: media/img/SCA_Results1.png
   :width: 800
   :alt: CPA results
   :align: center

Conclusion
***************************************************************

You did it ! It was your first FPGA-based side-channel attack experience on SCAbox. Now you may be interested in creating your own designs. That's the topic addressed in the following tutorials.