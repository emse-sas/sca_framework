import serial
import csv
import numpy as np
import random
from scipy import signal, stats


class FormatError(Exception):
    def __init__(self, message="", line=""):
        self.message = message
        self.line = line


class Log:
    def __init__(self, plains, ciphers, keys, traces, direction=None, mode=None):
        self.mode = mode
        self.direction = direction
        self.offset = 0
        self.sensors = 0
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.read_counts = []
        self.traces = traces

    def pop(self):
        self.plains.pop()
        self.ciphers.pop()
        self.keys.pop()
        self.traces.pop()
        self.read_counts.pop()

    def _hamming_to_int(self, s):
        return int(s - ord('O') + self.offset)

    def _parse_line(self, line, mini=True):
        split = line.strip().split(b" ")
        if len(split) < 2:
            return

        first = str(split[0], "ascii")
        second = split[1]
        if first == "mode:":
            self.mode = str(second, "ascii")
        elif first == "direction:":
            self.direction = str(second, "ascii")
        elif first == "sensors:":
            self.sensors = int(second)
        elif first == "target:":
            self.offset = int(second) * self.sensors
        elif first == "key:":
            self.keys.append(list(map(lambda x: hex(int(x, 16)), split[1:])))
        elif first == "plain:":
            self.plains.append(list(map(lambda x: hex(int(x, 16)), split[1:])))
        elif first == "cipher:":
            self.ciphers.append(
                list(map(lambda x: hex(int(x, 16)), split[1:])))
        elif first == "samples:":
            self.read_counts.append(int(second))
        elif first == "weights:":
            self.traces.append(
                list(map(self._hamming_to_int, second) if mini else map(int, second.split(","))))
            if len(self.traces[-1]) != self.read_counts[-1]:
                self.pop()

    def cropped_traces(self):
        n = min(self.read_counts)
        m = 0
        l = n - m + 1
        for i in range(0, n):
            if len(list(filter(lambda t: t[i] != self.traces[0][i], self.traces))) != 0:
                m = i
                break
        ret = list(map(lambda t: t[m:n], self.traces))
        reference = ret[0]
        for i in range(len(self.traces)):
            buffer = np.fromiter(map(
                lambda shift: stats.pearsonr(reference, np.roll(ret[i], shift))[0], list(range(-l, l))), dtype=np.float)
            ret[i] = np.roll(ret[i], np.argmax(buffer) - l)
        return ret

    def traces_matrix(self):
        traces = self.cropped_traces()
        n = len(traces)
        m = len(traces[0])
        ret = np.empty((n, m), dtype=int)
        for i in range(0, n):
            for j in range(0, m):
                ret[i, j] = traces[i][j]
        return ret

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

        return ret

    @classmethod
    def from_serial(cls, count, port, baud=115200, mini=True, hardware=False):
        ser = serial.Serial(port, baud, timeout=None,
                            parity=serial.PARITY_NONE, xonxoff=False)
        ser.flush()
        ser.write(("sca -t %d%s%s\n\r" % (count, " -m" if mini else "",
                                          " -h" if hardware else "")).encode())
        s = ser.read_until(b"\n\r\xff\n\r")
        ser.close()

        ret = cls.empty()
        lines = s.split(b"\n\r")

        for line in lines:
            ret._parse_line(line, mini)

        return ret

    @classmethod
    def from_reports(cls, datapath, tracepath):
        ret = cls.empty()
        with open(datapath, "r") as data_file:
            reader = csv.reader(data_file)
            for row in reader:
                if len(row) != 12:
                    continue
                ret.plains.append([row[0], row[1], row[2], row[3]])
                ret.ciphers.append([row[4], row[5], row[6], row[7]])
                ret.keys.append([row[8], row[9], row[10], row[11]])
        ret.plains = ret.plains[1:]
        ret.ciphers = ret.ciphers[1:]
        ret.keys = ret.keys[1:]

        with open(tracepath, "r") as traces_file:
            reader = csv.reader(traces_file)
            for row in reader:
                if len(row) == 0:
                    continue
                ret.traces.append(list(map(lambda x: int(x), row)))

        return ret

    def report_data(self, filepath):
        with open(filepath, "w") as file:
            writer = csv.writer(file)
            writer.writerow(["plain 0", "plain 1", "plain 2", "plain 3",
                             "cipher 0", "cipher 1", "cipher 2", "cipher 3",
                             "key 0", "key 1", "key 2", "key 3"])
            for i in range(0, len(self.traces)):
                writer.writerow(self.plains[i] +
                                self.ciphers[i] + self.keys[i])

    def report_traces(self, filepath):
        with open(filepath, "w") as file:
            writer = csv.writer(file)
            writer.writerows(self.traces)
