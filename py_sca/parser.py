import re
import serial


class Log:
    def __init__(self, plains, ciphers, keys, traces):
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.traces = traces

    def _parse_line(self, line):
        if line.startswith("key:"):
            split = line.split(" ")
            self.keys.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif line.startswith("plain:"):
            split = line.split(" ")
            self.plains.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif line.startswith("cipher:"):
            split = line.split(" ")
            self.ciphers.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif re.match(r"([0-9]+,\s*)*\s*[0-9]+", line):
            split = line.split(",")
            self.traces.append(list(map(lambda x: int(x), split))[1:7800])

    @classmethod
    def empty(cls):
        return Log([], [], [], [])

    @classmethod
    def from_file(cls, filepath):
        with open(filepath, "r") as log_file:
            ret = cls.empty()
            for line in log_file:
                ret._parse_line(line)
        return ret

    @classmethod
    def from_serial(cls, count, port, baud=115200):
        ser = serial.Serial(port, baud, timeout=None, parity=serial.PARITY_NONE, xonxoff=False)

        ser.flush()
        ser.write(b"sca -t %d\n\r" % count)
        s = ser.read_until(b"end")
        lines = str(s, "utf-8").split("\n\r")

        ret = cls.empty()
        for line in lines:
            ret._parse_line(line)

        ser.close()
        return ret
