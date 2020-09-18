Fundamentals
***************************************************************

Our attack approach is based on the CPA. We attempt to infer a cryptographic key 
by correlating the **observed power leakage** to the **modeled power leakage** :

1. *Measure* leakage for an arbitrary number of crypto-algorithm runs
2. *Maximize* the correlation between model and observations by exploring keys
3. *Iterate* the previous steps for until the correlation is significant

In the case of an AES algorithm on 128 bit data, it leads to a key exploration 
among :math:`256 \cdot 16` possible values. 

In contrast, an explicit brute force attack in the same conditions would require
a key exploration in the :math:`2^{128}` possible values of the key.

This attack method can be characterized as a **divide and conquer key inference**.

Victims
***************************************************************

FPGA based remote-sensors are employed in the framework to eavesdrop the power leakage of 
a crypto-algorithm running in the SoC.

Therefore, at least **two types of targets** are sensitive to our attack, the *CPU* and the *FPGA accelerators*.
This allows to implement different attack *modes* considering which target our victim uses :

- **FPGA/FPGA** : FPGA accelerator located on the FPGA fabric
- **FPGA/CPU** : CPU located the near FPGA fabric

The complete attack model is illustrated in the figure bellow :

.. image:: ../../../img/sca_overview.png
   :width: 640
   :alt: SCA Overview
   :align: center


Assumptions
***************************************************************

For the previously described attack to successfully retrieve the key, 
it is necessary to make the following assumptions :

a. Attacker and victim share the same FPGA fabric
b. Attacker and victim shares the same CPU
c. The key remains the same during all the power measurement
d. The attacker is able to synchronously trigger power measurement


Attack pipeline
***************************************************************

In order to standardize the attack process we defined a procedure called the *attack pipeline*.
It consists on several steps that will allow to manually or programmatically reproduce this attack.
The procedure works for all targets under the assumptions provided above.

1. Launch sensors acquisition
2. Launch crypto-algorithm
3. Wait until crypto-algorithm end
4. Stop sensors acquisition
5. Send data via serial port
6. Acquire data on the computer
7. Correlate data on the computer


