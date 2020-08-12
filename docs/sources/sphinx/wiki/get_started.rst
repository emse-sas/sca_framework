Installation
============


*****************
Project structure
*****************

The test-bench takes the form of a hybrid toolkit that allows you to customize
the behavior of the attack and acquisition at various levels.

The test-bench is composed of various heterogeneous parts :

- *vivado_sca*: Hardware design for the hardware SCA test-bench
- *vivado_ip*: Vivado managed IP used in vivado_sca
- *platform_sca*: C Vitis/SDK platform project
- *cmd_sca*: C command prompt hardware driver
- *py_sca*: Python automation tool

************
Requirements
************

If you only want to launch an attack without modify any code you can download
the latest release to obtain the bitstream and C binaries.
This way you will be able to use the framework only using PuTTY and Python 3.8.

In order to perform customization you will need : 

- An SoC featuring an FPGA fabric and a CPU
- Xilinx Vivado to build the hardware
- Xilinx Vitis or SDK to build the platform
- PuTTY to communicate with serial port
- Python 3.8 at least for automation

Notes
-----

- Currently the framework has only been tested on the Zynq Zybo-Z7 boards
- Please use the ``requirements.txt`` provided with py_sca to download dependencies


***************
Setup via IDE
***************

To setup the framework follow these steps :

1. Download or clone the project
2. Start Vitis IDE
3. Set the project's directory as Vitis workspace
4. Build the platform project platform_sca
5. Build the software project cmd_sca
6. Turn ON your board and ensure UART connection is working
7. Retrieve the board's COM channel
8. Launch any terminal emulator (PuTTY)
9. Configure PuTTY with right serial port
10. Run cmd_sca on your hardware platform via Vitis

Notes
-----

If you do not want to switch workspace you can also load cmd_sca and platform_sca 
separately in the same workspace.

*********************
Communicate via PuTTY
*********************

Once you've setup the framework and started PuTTY, 
you should see the following output :

.. code-block:: shell

    > 

The symbol for the prompt is displayed which indicates that
the prompt is ready to process incoming commands.

Test the following command :

.. code-block:: shell

    > aes -k 0x000102030405060708090a0b0c0d0e0f -p 0x00112233445566778899aabbccddeeff -h


If your setup went well you should see the following output :

.. code-block:: shell

    Start hardware AES
    key: 0x00010203 04050607 08090A0B 0C0D0E0F
    plain: 0x00112233 44556677 8899AABB CCDDEEFF
    cipher: 0x69C4E0D8 6A7B0430 D8CDB780 70B4C55A

Explanations
------------

By launching this command you asked the hardware 
to perform an AES encryption of the given plain text.
The program asked the accelerator to encrypt the message 
and waited until encryption done.
When it is, the cipher is read by the CPU to display it in the console.
