Overview
========

*cmd_sca* is a C command prompt application that runs on SoC programmed with our hardware platform.

It is designed to perform :

* Hardware testing and configuration 
* Sensors acquisition during crypto-algorithms runs
* Acquisition data export via UART

Commands
========

To get an exhaustive list of the available commands run the ``help`` command.

The commands uses options as keyword arguments, various option value types are provided:

- **none** : option without value eg. `show -a`
- **decimal** : base 10 integer value eg. `compute -v 100`
- **hexadecimal** : base 16 integer value eg. `compute -v 0x11111`
- **string**: string value `help -c quit`

****
help
****

- **-c [string]** : prints specific help for a command

****
aes
****

- **-p [hexadecimal]** : specify the plain text
- **-c [hexadecimal]** : specify the cipher text
- **-k [hexadecimal]** : specify the key text
- **-h** : use the hardware accelerator, if not set will use tiny-AES
- **-a** : launch a sensor acquisition during AES computation
- **-m** : compress acquisition data

****
tdc
****

- **-r** : direct read of the TDC registers value
- **-c [decimal]**: calibrate the TDC with the given number of iterations during calibration

****
fifo
****

- **-r** : pop and print all the values contained in the fifo
- **-f** : flush the fifo

***
sca
***

- **-t [decimal]** : count of traces to record
- **-h** : use the hardware accelerator, if not set will use tiny-AES
- **-m** : compress acquisition data