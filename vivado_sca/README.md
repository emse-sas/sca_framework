# Vivado wrapper design for the test bench

We designed a simple wrapper design containing the minimum requirement to perform attack in a high-performance and flexible way.

<img src="https://github.com/samiBendou/sca_framework/raw/master/media/img/sca_vivado_wrapper.png" alt="top level" style="width:200px;"/>


To get deep into the design and the performances of the test bench go to the [wiki](https://github.com/samiBendou/sca_framework/wiki). Here we only give a top level description with explanations on the interface.

## CPU Interface

Our CPU hardware interface consist on a Zynq7 processing system.
All our IP are communicating using the AXI4-Lite protocol making them systematic to design and easy to document.

The CPU controls data acquisition and attack flows. It is running the cmd documented in the directory [cmd_sca](https://github.com/samiBendou/sca_framework/cmd_sca).

**Note** The cryptographic-accelerator is driven by the same processing system as the attacker hardware. In practice this could not be so easily achievable. 
For the sake of testing we won't try to reproduce an exact attacker configuration.

## Sensors

Our test bench features sensors based on various technologies. All of these communicate with AXI bus to perform calibration and to read values.

Our sensors are customizable IP in Vivado, you can change the customization parameters and observe the effects on the acquisition performances.

## TDC sensor

### AXI input/output specification

- *data*: 4 up to 128 bits sensor data bus
- *delay*: 6 bits initial delay configuration

### Customization parameters

- *coarse length* : length of the delay path used for coarse tunning
- *fine length* : length of the delay path used for coarse tunning
- *sampling length* : length of the delay path used for sampling
- *count tdc* : count of parallel TDC instantiated

#### RO sensor
[WIP]

## AES

Our AES communicate with the AXI bus to perform input data write and output data read while informing the CPU on the current AES status. 
Furthermore we added control outputs to our AES in order to allow hardware synchronous triggering of acquisition.

### AXI input/output specification

- *data*: 2 x 128 bit data (input and output)
- *key*: 128 bit key
- *status*: 2 x 32 bit status registers (input and output)

## Acquisition controller

We implemented a FIFO based acquisition controller, this allows to read each sensor at an accurately fixed frequency.

In our design, the output data of each sensor is connected to the data input of the FIFO, then our FIFO communicate its read output via the AXI-bus.

### AXI input/output specification

- *data*: FIFO output
- *status*: FIFO status (output), acquisition status (input)

