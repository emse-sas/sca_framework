 # SCA Framework

## Introduction: An FPGA-based SCA evaluation platform 

This repository contains an open-source Side-Channel Analysis (SCA) framework based on a Xilinx Zynq SoC. It provides a complete toolkit to implement crypto-algorithms and capture  their power SCA leakage.

### Featuring

The framework is composed of two heterogeneous parts :
- [**Hardware design**](https://github.com/samiBendou/sca_framework/tree/master/vivado_sca) : test bench design containing victim AES FPGA, sensors and acquisition logic
- [**Driver application**](https://github.com/samiBendou/sca_framework/tree/master/cmd_sca) : control and configuration application for the attack

The repository is organized as follows :
- **vivado_sca**: Vivado design for the hardware SCA test-bench
- **vivado_ip**: Vivado managed IP used in **vivado_sca**
- **platform_sca**: C Vitis/SDK platform project
- **cmd_sca**:  C command prompt to drive the hardware platform

### How does it work?

#### Hardware design

Our hardware design is based on sensors that leverage FPGA digital logic blocks available in the slices to capture the SoC voltage fluctuations.
These sensors are employed to eavesdrop the power leakage of a crypto-algorithm running in the FPGA fabric (FPGA-to-FPGA attack) or in the CPU (FPGA-to-CPU attack).

*Only the Zynq board is needed. Both the crypto-algorithm process and the power trace acquisition are happening inside*

#### Driver application

Our driver application is a command prompt that allows to easily and safely test the hardware design and launch the attacks.
It provides hardware configuration, sensor acquisition and crypto-algorithm control.


### For what purpose? 

- As a way to reproduce the remote power SCA attacks proposed in [link to the paper 1] and [link to the paper 2]
- As a way to evaluate the SCA leakage of other hardware and software crypto-algorithms.
- As an educational low-cost platform for SCA training and co-design development.

### What's inside?

**Sensors:**
- Time-to-Digital Converter based sensor (TDC) 
- Ring-Oscillator-based sensor (RO)
- *Your sensor ? (you can add your sensor in the vivado bloc design)*

**Hardware Algorithms (VHDL - verilog)**
- Custom hardware AES - key size : 128 bit - data path : 128 bit
- *Your HW algorithm ? (you can add your hardware algorithm in the vivado bloc design)*

**Software Algorithms (C)**
- [tiny-AES-c](https://github.com/kokke/tiny-AES-c) [version 1.0](https://github.com/kokke/tiny-AES-c/releases/tag/v1.0.0)
- [openssl](https://github.com/openssl/openssl/) [version 3.0.0 alpha-4](https://github.com/openssl/openssl/releases/tag/openssl-3.0.0-alpha4)
- *Your SW algorithm ? (you can add your software algorithm in the vitis C project)*

### Documentation

This repository features a [wiki](https://github.com/samiBendou/sca_framework/wiki) that provides a complete technical documentation of the framework.
If your new to SCA attacks it also provide a detailed presentation of [remote SCA attacks](https://github.com/samiBendou/sca_framework/wiki/Topic-Overview).

To set-up the framework and launch the attacks check the [getting started guide](https://github.com/samiBendou/sca_framework/wiki/Getting-Started). 
If you are already familiar with Vivado and Vitis/SDK you can directly get deep into the [setup documentation](https://github.com/samiBendou/sca_framework/wiki/Our-setup).

### Contributions
