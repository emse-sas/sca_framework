# CMD for attack configuration and run

Our driver application consist on a **simple** and **robust** command prompt (CMD).

### Features

- Hardware design unit and integration testing
- Acquisition of sensors synchronized with cryptographic computation
- CSV data parsing for sensor [WIP]
- Attack launcher [WIP]


## Usage

To get an exhaustive list of the available commands type `help`.
```
>help
[prints help for all commands]
>help -c quit
Label           Description         Options
quit            exit the software   
>quit
Exiting....
>aes -k 0x000102030405060708090a0b0c0d0e0f -p 0x00112233445566778899aabbccddeeff
Starting tiny-AES...
Plain text: 0x00112233 44556677 8899aabb ccddeeff
Cipher text: 0x69c4e0d8 6a7b0430 d8cdb780 70b4c55a
>aes -k 0x000102030405060708090a0b0c0d0e0f -c 0x69c4e0d86a7b0430d8cdb78070b4c55a -h
Starting hardware AES...
Cipher text: 0x69c4e0d8 6a7b0430 d8cdb780 70b4c55a
Plain text: 0x00112233 44556677 8899aabb ccddeeff
>tdc -r
Current value: 0x0000ffff
```

## Options and Arguments

Options take the role of argument in this application.
You can use options as named optional arguments.

Currently, four option value types are provided:

- **None** : option without value eg. `show -a`
- **Decimal** : base 10 integer value eg. `compute -v 100`
- **Hexadecimal** : base 16 integer value eg. `compute -v 0x11111`
- **String**: string value `help -c quit`

## Available commands

### Command table
| label 	| description                      	| example                                                                           	|
|-------	|----------------------------------	|-----------------------------------------------------------------------------------	|
| help  	| display help for the commands    	| `help -c quit`                                                                        |
| quit  	| quit the command prompt         	| `quit`                                                                            	|
| aes   	| launch AES encryption/decryption 	| `aes -k 0x000102030405060708090a0b0c0d0e0f -p 0x00112233445566778899aabbccddeeff` 	|
| tdc   	| calibrate TDC and direct read    	| `tdc -c 2048`                                                                     	|
| fifo   	| read and flush fifo           	| `fifo -r`                                                                         	|
### Options

#### help
- `-c [string]` : prints specific help for a command

#### aes
- `-p [hexadecimal]` : specify the plain text as hexadecimal raw bytes
- `-c [hexadecimal]` : specify the cipher text as hexadecimal raw bytes
- `-h` : use the hardware accelerator, if not set the command will use tiny-AES
- `-a` : launch a TDC sensor acquisition during AES computation

#### tdc
- `-r` : direct read of the TDC registers value
- `-c [decimal]`: calibrate the TDC with the given number of iterations during calibration

#### fifo
- `-r` : pop and print all the values contained in the fifo
- `-f` : flush the fifo