# template_cmd

This application is a template of cmd client that can be expanded to answer to the need of a basic and robust client.

## Features

- User defined commands
- User defined options of various types
- Easily expandable code architecture

## Usage

The templates features three commands `help`, `quit` and `aes`
Compile the project to test these.

```
>help
[prints help for all commands]
>help -c quit
Label           Description
quit            exit the software
>quit
Exiting....
>aes -k 0x000102030405060708090a0b0c0d0e0f -p 0x00112233445566778899aabbccddeeff
Starting tiny-AES...
Plain text: 0x00112233 44556677 8899aabb ccddeeff
Cipher text: 0x69c4e0d8 6a7b0430 d8cdb780 70b4c55a
>aes -k 0x000102030405060708090a0b0c0d0e0f -c 0x69c4e0d86a7b0430d8cdb78070b4c55a
Starting tiny-AES...
Cipher text: 0x69c4e0d8 6a7b0430 d8cdb780 70b4c55a
Plain text: 0x00112233 44556677 8899aabb ccddeeff
```

## Options and Arguments

Options take the role of argument in this application.
You can use options as named optional arguments.

Currently, four option value types are provided:

- **None** : option without value eg. `show -a`
- **Decimal** : base 10 integer value eg. `compute -v 100`
- **Hexadecimal** : base 16 integer value eg. `compute -v 0x11111`
- **String**: string value `help -c quit`