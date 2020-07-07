 # SCA Framework

## Introduction: An FPGA-based SCA evaluation platform 

This repository contains an open-source Side-Channel Analysis (SCA) framework based on a Xilinx Zynq SoC. It provides a complete toolkit to implement crypto-algorithms and their capture power SCA leakage.

<!--We constructed the framework in order to allow to easily reproduce the attacks made available by the current state of the art.
We want to keep the framework setup and attack configuration as straightforward as possible in order to allow the largest number of people to launch and review the attack.-->

### How does it work?

It leverages FPGA digital logic blocks designed to capture the SoC voltage fluctuations. These sensors are employed to eavesdrop the power leakage 
of a crypto-algorithm running in the FPGA fabric (FPGA-to-FPGA attack) or in the CPU (FPGA-to-CPU attack)
<!--then used to conduct Simple Power Analysis (SPA) and Correlation Power Analysis (CPA)-->
*Only the Zynq board is needed. Both the crypto-algorithm process and the power trace acquisition are happening inside*


### For what purpose? 

- As a way to reproduce the remote power SCA attacks proposed in [link to the paper 1] and [link to the paper 2]
- As a way to evaluate the SCA leakage of other hardware and sofware crypto-algorithms.
- As an educational low-cost platform for SCA traning and co-design development.

### What's inside?

**Sensors:**
- Time-to-Digital Converter based sensor (TDC) 
- Ring-Oscillator-based sensor (RO)
- *Your sensor ? (you can add your sensor in the vivado bloc design)*

**Hardware Algorithms (VHDL - verilog)**
- Custom hardware AES - key size : 128 bit - data path : 128 bit
- *Your HW algorithm ? (you can add your hardware algorithm in the vivado bloc design)*

**Software Algorithms (C)**
- tiny AES
- OpenSSL AES
- *Your SW algorithm ? (you can add your software algorithm in the vitis C project)*


### Topic overview

FPGA devices are becoming increasingly popular thanks to the growing number of IoT objects and the need of faster computation despite the end of Moore's law.

Today, in order to improve computational performances, servers can embed FPGA based *hardware accelerators*. These are often cryptographic accelerators. This allows a better response time for server when establishing a secure connection with a client. 

![sca servers fpga](media/img/sca_servers_fpga.png)  

As it is a common practice to share a server among multiple users, shared FPGA fabric are studied in order to allow the implementation of **multiple accelerators into the same server**, improving the response time for the clients of a server.

The same way it is done with containerization on server, *logical isolation* can be perform inside the FPGA fabric to forbid users access to each other's logic, although it is **significantly more difficult to provide power isolation**. Indeed, this one is distributed using a common delivery network called *Power Delivery Network* (PDN).    

![sca pdn](media/img/sca_pdn.png)

It is therefore possible to perform *remote SCA*.
While the *victim* performs encrypted communication on the server, the *attacker* can remotely implement malicious logic inside the FPGA fabric.

More precisely, the attacker can implement sensors that will acquire the *power leakage* throughout the PDN in order to retrieve the encryption key.

In this context, we attempt to perform a remote SCA using Correlation Power Analysis (CPA).

To achieve our goal, we designed a *hybrid framework* that allows to simulate our SCA attacks on a majority of hybrid FPGA development boards and retrieve results on a personal computer.

The framework consist on a test bench FPGA platform and an configure and run application.


#### Contents

The framework as it is hybrid contains two heterogeneous parts :
- [**Driver application**](https://github.com/samiBendou/sca_framework/tree/master/cmd_sca) : control and configuration application for the attack
- [**Hardware design**](https://github.com/samiBendou/sca_framework/tree/master/vivado_sca) : test bench containing victim AES FPGA, sensors and triggering logic

The repository is organized as follows :
- **cmd_sca**:  C command prompt to drive the hardware platform
- **vivado_sca**: Vivado project for the hardware SCA test-bench
- **platform_sca**: C Vitis/SDK platform project

### Documentation

Since this framework is part of a complete research project, not only code documentation is provided but we also provided a more general technical documentation.

To get started with the framework check the [getting started guide](https://github.com/samiBendou/sca_framework/wiki/Getting-Started). 
If you are already familiar with Vivado and Vitis/SDK you can directly get deep into the [attack documentation](https://github.com/samiBendou/sca_framework/wiki/Our-setup).


#### Internal documentation

this repository features a wiki with technical documentation containing:
- Code documentation
- Attack documentation
- Hardware documentation 

#### Side channel attacks

The following research papers describes and experiment side channels attacks:
- [link to the papers]

#### FPGA based sensors

The following research papers describes and experiment FPGA based sensors:
- [link to the papers]

#### Remote FPGA

The following research papers describes and experiment the remote FPGA and collocation possibilities
- [link to the papers]
