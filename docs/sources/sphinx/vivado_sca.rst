
Overview
========

*vivado_sca* a simple Vivado design wrapper project containing the minimum requirements 
to perform a side-channel acquisition in a customizable way.

It provides a demo design containing various components :

- CPU interface
- Test sensors
- Test crypto-accelerator
- Synchronous acquisition system

To get deep into the architecture of the hardware design you can consult the related pages in the wiki.

A schematic top-level view of our demo design is given in the figure bellow :

.. image:: ../../../img/sca_vivado_wrapper.png
   :width: 640
   :alt: Vivado wrapper
   :align: center

*************
CPU Interface
*************

Our CPU hardware interface consist on a Zynq7 processing system.
All our IP are communicating using the AXI4-Lite protocol making 
them systematic to design and easy to document.

The CPU controls data acquisition and attack flows using *cmd_sca* driver. 
When an acquisition is triggered, the acquisition system samples the sensors
at constant frequency and stores the values sequentially.

When the acquisition is finished the values can be retrieved via the interface
between the acquisition system and the CPU.

Notes
-----

The cryptographic-accelerator is driven by the same processing system as the attacker hardware. 
In practice this could not be so easily achievable.
We do so in order to ease acquisition synchronization with crypto-accelerator.
