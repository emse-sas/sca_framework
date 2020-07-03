# vivado_sca
## Vivado wrapper project for the test bench

We designed a simple wrapper containing the minimum requirement to perform attack in a high-performance and flexible way.

![top level](media/img/sca_vivado_wrapper.png)


### Sensors

Our test bench features two types of sensors based on two different technologies :
- Time-To-Digital Converter (TDC)
- Ring Oscillator (RO)

To get deep into the design and the performances of each sensor go to the [documentation page]. Here we only give a top level description with explanations on the interface.

All the sensors communicate with AXI bus to perform calibration and to directly read values.
These are also provided with a data output allowing to design more complex acquisition hardware.

#### TDC sensor

The TDC sensor is implemented as a generic component provide 3 performance impacting customization parameters :
- Count of coarse delay : coarse calibration of the initial clock delay
- Count of fine delay : fine calibration of the initial clock delay
- Length of the delay line : output sampling range

##### RO sensor
[WIP]

### AES

 We choose to implement a classic round loop AES 128 implementation with key buffering, this is supposed to provide an equilibrium between space consumption and computational performances.

 Our AES communicate with the AXI bus to perform input data write and output data read while informing the CPU on the current AES status. Furthermore we added control outputs to our AES in order to allow hardware synchronous triggering of acquisition.

### CPU Interface

Our CPU hardware interface consist on a Zynq7 processing system.
All our IP are communicating using the AXI4-Lite protocol making them systematic to design and easy to document.

The CPU controls data acquisition and attack flows. It is executing driver code documented [here](https://github.com/samiBendou/sca_framework/cmd_sca).

**Note** The AES is driven by the same processing system as the attacker hardware. In practice this could not be so easily achievable. 
For the sake of testing we won't try to reproduce an exact attacker configuration.

### Acquisition controller

We implemented a FIFO based acquisition controller, this allows to read the our sensors at an accurate and fixed frequency.

in our design the output data of the sensor are connected to the write input of the FIFO.
Our FIFO communicate its read output via AXI-bus.

Our acquisition controller also manages acquisition triggering.
It provides fixed frequency synchronous acquisition of power consumption during AES encryption.

**Note** The triggering system we designed is not practice ready. In a real attack triggering cannot be done such easily and is the subject of other research project.