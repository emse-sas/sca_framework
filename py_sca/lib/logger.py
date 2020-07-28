import serial
import csv
import random

class FormatError(Exception):
    def __init__(self, message="", line=""):
        self.message = message
        self.line = line


class Log:
    def __init__(self, plains, ciphers, keys, traces, direction=None, mode=None, sync=True):
        self.mode = mode
        self.direction = direction
        self.offset = 0
        self.sensors = 0
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.reads = []
        self.samples = 0
        self.traces = traces

    def pop(self):
        self.plains.pop()
        self.ciphers.pop()
        self.keys.pop()
        self.traces.pop()
        self.reads.pop()

    def _hamming_to_int(self, s):
        return int(s - ord('P') + self.offset)

    def _parse_line(self, line, mini=True):
        split = line.strip().split(b":")
        if len(split) < 2:
            return

        first = str(split[0], "ascii")
        second = split[1].strip()
        if first == "mode":
            self.mode = str(second, "ascii")
        elif first == "direction":
            self.direction = str(second, "ascii")
        elif first == "sensors":
            self.sensors = int(second)
        elif first == "target":
            self.offset = int(second) * self.sensors
        elif first == "key":
            self.keys.append(split[1:])
        elif first == "plain":
            self.plains.append(split[1:])
        elif first == "cipher":
            self.ciphers.append(split[1:])
        elif first == "samples":
            self.reads.append(int(second))
        elif first == "weights":
            self.traces.append(list(map(self._hamming_to_int, line[9:]) if mini else map(int, second.split(b","))))
            m = len(self.traces[-1])
            if m != self.reads[-1]:
                self.reads[-1] = m

    @classmethod
    def empty(cls):
        return Log([], [], [], [])

    @classmethod
    def from_file(cls, filepath, mini=True):
        lines = []
        ret = cls.empty()
        with open(filepath, "rb") as log_file:
            for line in log_file:
                if len(line) == 0:
                    continue
                lines.append(line.replace(b"\r", b"").replace(b"\n", b""))

        for line in lines:
            ret._parse_line(line, mini)

        ret.samples = len(ret.traces)
        return ret

    @classmethod
    def from_serial(cls, count, port, baud=115200, mini=True, hardware=False):
        ser = serial.Serial(port, baud, timeout=None,
                            parity=serial.PARITY_NONE, xonxoff=False)
        ser.flush()
        ser.write(("sca -t %d%s%s\r\n" % (count, " -m" if mini else "",
                                          " -h" if hardware else "")).encode())
        s = ser.read_until(b"\r\n\xff\r\n")
        ser.close()

        ret = cls.empty()
        lines = s.split(b"\n")

        for line in lines:
            ret._parse_line(line.replace(b"\r", b""), mini)

        ret.samples = len(ret.traces)
        return ret

    @classmethod
    def from_reports(cls, datapath, tracepath):
        ret = cls.empty()
        with open(datapath, "r") as data_file:
            reader = csv.reader(data_file)
            for row in reader:
                if len(row) != 12:
                    continue
                ret.plains.append(list(row[0:4]))
                ret.ciphers.append(list(row[4:8]))
                ret.keys.append(list(row[8:12]))
        ret.plains = ret.plains[1:]
        ret.ciphers = ret.ciphers[1:]
        ret.keys = ret.keys[1:]

        with open(tracepath, "r") as traces_file:
            reader = csv.reader(traces_file)
            for row in reader:
                if len(row) == 0:
                    continue
                ret.traces.append(list(map(lambda x: int(x), row)))
        
        ret.samples = len(ret.traces)
        return ret

    def report_data(self, filepath):
        with open(filepath, "w") as file:
            writer = csv.writer(file)
            writer.writerow(["p0", "p1", "p2", "p3",
                             "c0", "c1", "c2", "c3",
                             "k0", "k1", "k2", "k3"])
            for plain, cipher, key in zip(self.plains, self.ciphers, self.keys):
                writer.writerow(plain + cipher + key)

    def report_traces(self, filepath):
        with open(filepath, "w") as file:
            writer = csv.writer(file)
            writer.writerows(self.traces)
