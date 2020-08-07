import os
from datetime import timedelta


def decode_hamming(c, offset=0):
    return int(c) - ord("P") + offset


def format_hex(w):
    return f"{int(w, 16):08x}"


def print_timing(message, sec1, sec0):
    print(f"{message}elapsed: {str(timedelta(seconds=sec1 - sec0))}")


def format_sizeof(num, suffix="B"):
    for unit in ["", "Ki", "Mi", "Gi", "Ti", "Pi", "Ei", "Zi"]:
        if abs(num) < 1024.0:
            return f"{num:3.1f}{unit}{suffix}"
        num /= 1024.0
    return f"{num:.1f}{'Yi'}{suffix}"


def remove_subdir_files(path):
    for dir_path, _, filenames in os.walk(path):
        for filename in filenames:
            os.remove(os.path.join(dir_path, filename))


def try_create_dir(path):
    try:
        os.mkdir(path)
    except FileExistsError:
        print(f"{path} already exists")
        pass
