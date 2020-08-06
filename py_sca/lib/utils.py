from datetime import timedelta


def decode_hamming(c, offset=0):
    return int(c) - ord("P") + offset


def format_hex(w):
    return "{:08x}".format(int(w, 16))


def format_timing(message, sec1, sec0):
    return "{}\nelapsed: {}".format(message, str(timedelta(seconds=sec1 - sec0)))


def format_sizeof(num, suffix="b"):
    for unit in ["", "Ki", "Mi", "Gi", "Ti", "Pi", "Ei", "Zi"]:
        if abs(num) < 1024.0:
            return "{:3.1f}{}{}".format(num, unit, suffix)
        num /= 1024.0
    return "{:.1f}{}{}".format(num, "Yi", suffix)
