Context
=======

FPGA devices are becoming increasingly popular thanks to the growing number of IoT objects and 
the need of faster computation despite the end of Moore's law.

Today, in order to improve computational performances, 
servers can embed FPGA based *hardware accelerators*. These are often cryptographic accelerators. 
This allows a better response time for server when establishing a secure connection with a client. 

.. image:: ../../../img/sca_servers_fpga.png
   :width: 400
   :alt: SCA Server's FPGA
   :align: center

As it is a common practice to share a server among multiple users, 
shared FPGA fabric are studied in order to allow the implementation of 
**multiple accelerators into the same server**, improving the response time for the clients of a server.

The same way it is done with containerization on server, 
*logical isolation* can be perform inside the FPGA fabric to forbid users access to each other's logic, 
although it is **significantly more difficult to provide power isolation**. 
Indeed, this one is distributed using a common delivery network called *Power Delivery Network* (PDN).    

.. image:: ../../../img/sca_pdn.png
   :width: 500
   :alt: SCA Server's PDN
   :align: center

It is therefore possible to perform *remote SCA*.
While the *victim* performs encrypted communication on the server, 
the *attacker* can remotely implement malicious logic inside the FPGA fabric.

More precisely, the attacker can implement sensors that will 
acquire the *power leakage* throughout the PDN in order to retrieve the encryption key.

In this context, we attempt to perform a remote SCA using CPA.

To achieve our goal, we designed a *hybrid framework* that allows to simulate our SCA attacks 
on a majority of hybrid FPGA development boards and retrieve results on a computer.


* *FPGA-to-FPGA* : The algorithm runs on the FPGA
* *FPGA-to-CPU* : The algorithm runs on the CPU

Related papers
==============

********************
Side channel attacks
********************

The following research papers describes and experiment side channels attacks:
- [link to the papers]

********************
FPGA based sensors
********************

The following research papers describes and experiment FPGA based sensors:
- [link to the papers]

********************
Remote FPGA
********************

The following research papers describes and experiment the remote FPGA and collocation possibilities
- [link to the papers]
