Acquisition
===============================================================

Goals
***************************************************************

This tutorial exposes the power leakage acquisition configurations available in the demo.
It shows you how to perform a parametrized acquisition with a command :

1. Simple acquisition
2. Cropped acquisition
3. Crypto-algorithm acquisition
4. Iterated acquisition

**Notes** 

- To denote the value given to an option we will always use the letter designing the option. eg. ``-s`` will be :math:`s`
- If you want to know more about the commands available in the demo you can displayed the help by typing ``help``



Requirements
***************************************************************

You must have a complete the demo installation tutorial before starting this tutorial.
It is recommended to have an understanding of our hardware setup before starting the tutorial.

- Any terminal emulator such as PuTTY, TeraTerm or picocom
- Have a completed the installation tutorial
- Have an understanding of our hardware setup

Simple acquisition
***************************************************************

A simple acquisition consist on acquiring the sensors a constant frequency at an arbitrary instant and storing the values a hardware FIFO.
The latter is then read by the demo and the acquired values are sent via UART.

To perform a simple acquisition type the following command :

.. code-block:: shell

    > fifo -a

If the command executed successfully you should have an output similar to bellow in your terminal emulator :

.. image:: media/img/acquisition_fifo.png
   :width: 640
   :alt: FIFO output simple
   :align: center

if you want the sensor output to be printed in number instead of char code use the option verbose ``-v`` :

.. code-block:: shell

    > fifo -a -v


Cropped acquisition
***************************************************************

A cropped acquisition is a simple acquisition where the data is cropped at its start and end.
The resulting data will contain :math:`s - e` samples excluding the e-th one. 

To perform a cropped acquisition type the following command

.. code-block:: shell

    > fifo -a -s [start] -e [end]

If the command executed successfully you should have an output similar to bellow in your terminal emulator :

.. image:: media/img/acquisition_crop.png
   :width: 640
   :alt: FIFO output cropped
   :align: center


Crypto-algorithm acquisition
***************************************************************

A crypto-algorithm acquisition consist on acquiring the sensors at constant frequency during the cryptographic computation
and storing the values a hardware FIFO.
The FIFO is then read by the demo and the acquired values are sent via UART.

To acquire a simple run of crypto-algorithm for example, a simple AES encryption. Type the following command :

.. code-block:: shell

    > aes -d [data] -k [key]

If the command executed successfully you should have an output similar to bellow in your terminal emulator :

.. image:: media/img/acquisition_aes.png
   :width: 640
   :alt: AES output
   :align: center

Note that no sensor value is displayed but the FIFO has effectively been fill.
To retrieve the acquired values, you must read the FIFO :

.. code-block:: shell

    > fifo [-v]

You can perform a cropped acquisition of crypto-algorithm : 

.. code-block:: shell

    > aes -d [data] -k [key] -e [end]

This way the hardware will stop to fill the FIFO once :math:`e` values are acquired.
You can similarly retrieve the acquired values :

.. code-block:: shell

    > fifo [-v] -s [start] -e [end]

Iterated acquisition
***************************************************************

In order to perform multiple crypto-algorithms run and capture their leakage, the demo provide a simple command that will iterate the crypto-algorithm acquisition :

.. code-block:: shell

    > sca [-v] -t [iterations] -s [start] -e [end]

This command will run cryptographic computation using random data and read the FIFO at once.
This process is repeated :math:`t` times.

If the command executed correctly you should see the following output :

.. image:: media/img/acquisition_sca.png
   :width: 640
   :alt: SCA output
   :align: center

Conclusion
***************************************************************

In this tutorial you learn how to launch power leakage acquisition, at an arbitrary instant and during crypto-computing.
You learn how to iterate this acquisition and how to crop the power leakage.

Keep in mind that the demo application provide is powerful tool to capture leakage and transmit it via UART using our protocol.
It allows to capture enough traces, that can be crop to diminish acquisition time, in order to perform a successful attack.

You can customize the demo-application to minimize memory usage or change functionally to better meet your needs.
For example you can change the analyzed crypto-algorithm or the random generation of encryption data.
