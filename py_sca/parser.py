import re
import serial
import csv


class Log:
    def __init__(self, plains, ciphers, keys, traces):
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.traces = traces
        self.read_counts = []

    def _parse_line(self, line):
        line = line.lower().replace("\n", "")

        if line.startswith("key:"):
            split = line.split(" ")
            self.keys.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif line.startswith("plain:"):
            split = line.split(" ")
            self.plains.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif line.startswith("cipher:"):
            split = line.split(" ")
            self.ciphers.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
        elif line.startswith("success:"):
            split = line.split(" ")
            self.read_counts.append(split[-1])
        elif re.match(r"([0-9]+,\s*)*\s*[0-9]+", line):
            split = line.split(",")
            self.traces.append(list(map(lambda x: int(x), split)))

    def cropped_traces(self):
        lens = list(map(lambda trace: len(trace), self.traces))
        n = min(lens)
        return list(map(lambda trace: trace[:n], self.traces))

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
