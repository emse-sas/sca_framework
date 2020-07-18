import re
import serial
import csv
import numpy as np


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
        return int(ord(s) - ord(' ') + self.offset)

    def _parse_line(self, line, mini=True):
        split = line.replace("\n", "").strip().split(" ")
        if len(split) < 2:
            return

        first = split[0]
        nexto = split[1]
        if first == "mode:":
            self.mode = nexto
        elif first == "direction:":
            self.direction = nexto
        elif first == "target:":
            self.offset = int(nexto)
        elif first == "sensors:":
            self.sensors = int(nexto)
        elif first == "key:":
            self.keys.append(split[1:])
        elif first == "plain:":
            self.plains.append(split[1:])
        elif first == "cipher:":
            self.ciphers.append(split[1:])
        elif first == "samples:":
            self.read_counts.append(int(nexto))
        elif first == "weights:":
            match = re.match(r".*" if mini else r"([0-9]+,\s*)*\s*[0-9]+", nexto).group()
            if match is None:
                raise FormatError("unrecognized weights format: %s" % nexto)
            self.traces.append(list(map(self._hamming_to_int, match) if mini else map(int, match.split(","))))
            if len(self.traces[-1]) != self.read_counts[-1]:
                self.pop()

    def cropped_traces(self):
        n = min(self.read_counts)
        m = 0
        for i in range(0, n):
            if len(list(filter(lambda t: t[i] != self.traces[0][i], self.traces))) != 0:
                m = i
                break
        return list(map(lambda t: t[m:n], self.traces))

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
        with open(filepath, "r") as log_file:
            for line in log_file:
                if len(line) == 0:
                    continue
                lines.append(line)

        for line in lines:
            ret._parse_line(line, mini)

        return ret

    @classmethod
    def from_serial(cls, count, port, baud=115200, mini=True, hardware=False):
        ser = serial.Serial(port, baud, timeout=None, parity=serial.PARITY_NONE, xonxoff=False)
        ser.flush()
        ser.write(("sca -t %d%s%s\n\r" % (count, " -m" if mini else "", " -h" if hardware else "")).encode())
        s = ser.read_until(b"\n\r\xff\n\r")
        ser.close()

        ret = cls.empty()
        try:
            lines = str(s[:-3], "ascii").split("\r")
        except UnicodeDecodeError as e:
            raise FormatError("unable to decode bytes string: %s\n" % s[e.start:e.end])

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
                writer.writerow(self.plains[i] + self.ciphers[i] + self.keys[i])

    def report_traces(self, filepath):
        with open(filepath, "w") as file:
            writer = csv.writer(file)
            writer.writerows(self.traces)
