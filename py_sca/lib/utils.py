"""General utility functions

"""

import os
from datetime import timedelta


def decode_hamming(c, offset=0):
    """Decode ASCII encoded hamming weight
    
    Parameters
    ----------
    c : str
        Char representing encoded hamming weight
    offset : int, optional
        Additional offset value used to encode weight

    Returns
    -------
    int
        Decoded hamming weight
    """
    return int(c) - ord("P") + offset


def check_hex(w):
    """Checks if a correct hexadecimal bytes string is given

    Parameters
    ----------
    w : str
        Hexadecimal 32-bit word string

    Returns
    -------
    0 padded hexadecimal string

    Raises
    ------
    ValueError
        Unable to parse integer from given string

    """
    return f"{int(w, 16):08x}"


def print_timing(message, sec1, sec0):
    """Prints a message and the duration between the two given instants

    Parameters
    ----------
    message : str
        Message to print
    sec1 : int
        Start date as seconds
    sec0 : int
        End date as seconds

    """
    print(f"{message}elapsed: {str(timedelta(seconds=sec1 - sec0))}")


def format_sizeof(num, suffix="B"):
    """Convert and format a number to a file size unit

    Parameters
    ----------
    num : int
        Number to format
    suffix : str
        Unit suffix
    Returns
    -------
    str
        Formatted number
    """
    for unit in ["", "Ki", "Mi", "Gi", "Ti", "Pi", "Ei", "Zi"]:
        if abs(num) < 1024.0:
            return f"{num:3.1f}{unit}{suffix}"
        num /= 1024.0
    return f"{num:.1f}{'Yi'}{suffix}"


def remove_subdir_files(path):
    """Remove files in the sub directories at given directory

    Files in the given directory are not deleted.

    Parameters
    ----------
    path : str
        Path where to remove

    """
    for dir_path, _, filenames in os.walk(path):
        for filename in filenames:
            os.remove(os.path.join(dir_path, filename))


def try_create_dir(path):
    """Create directory or print a message

    Parameters
    ----------
    path : str
        Path to the directory to create

    """
    try:
        os.mkdir(path)
    except FileExistsError:
        print(f"{path} already exists")
        pass
