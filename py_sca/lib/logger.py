import serial
import csv
import random
from warnings import warn

END_TRACE = b"\xfe"
END_ACQ = b"\r\n\xff\r\n"


def _bytes_to_str(words):
    return list(map(lambda w: str(w, "ascii"), words))


class ParsingError(Exception):
    def __init__(self, line, keyword, error):
        super().__init__()
        self.line = line
        self.keyword = keyword
        self.error = error


class Log:
    def __init__(self, plains, ciphers, keys, traces, direction=None, mode=None):
        self.mode = mode
        self.direction = direction
        self.target = 0
        self.sensors = 0
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.reads = []
        self.samples = 0
        self.traces = traces

    @property
    def offset(self):
        return self.target * self.sensors

    def _pop(self, keyword):
        if keyword in ("mode", "direction", "sensors", "target"):
            return

        keywords = ("key", "plain", "cipher", "samples", "code", "weights")
        if keyword in keywords and self.keys:
            self.keys.pop()
        if keyword in keywords[1:] and self.plains:
            self.plains.pop()
        if keyword in keywords[2:] and self.ciphers:
            self.ciphers.pop()
        if keyword in keywords[3:] and self.reads:
            self.reads.pop()
        if keyword in keywords[4:] and self.traces:
            self.traces.pop()

    def _hamming_to_int(self, s):
        return int(s - ord("P") + self.offset)

    def _parse_line(self, line):
        split = line.strip().split(b":")
        if len(split) < 2:
            return
        try:
            keyword = str(split[0], "ascii").strip()
        except UnicodeDecodeError as e:
            raise ParsingError(line, split[0], e)

        data = split[1].strip()
        try:
            if keyword in ("mode", "direction"):
                setattr(self, keyword, str(data, "ascii"))
            elif keyword in ("sensors", "target"):
                setattr(self, keyword, int(data))
            elif keyword in ("key", "plain", "cipher"):
                getattr(self, keyword + "s").append(_bytes_to_str(data.split(b" ")))
            elif keyword == "samples":
                self.reads.append(int(data))
            elif keyword == "code":
                self.traces.append(list(map(self._hamming_to_int, line[6:])))
            elif keyword == "weights":
                self.traces.append(list(map(int, data.split(b","))))

            if keyword in ("code", "weights"):
                m = len(self.traces[-1])
                if m != self.reads[-1]:
                    raise RuntimeError("len mismatch %d != %d" %
                                       (m, self.reads[-1]))

        except (ValueError, UnicodeDecodeError, RuntimeError) as e:
            raise ParsingError(line, keyword, e)

    def _parse_lines(self, lines):
        valid = True
        for idx, line in enumerate(lines):
            if valid is False:
                valid = line == END_TRACE
                continue
            try:
                self._parse_line(line)
            except ParsingError as e:
                args = (e.keyword, e.error, idx, e.line)
                warn("parsing error\n\nkeyword: %s\n\nerror: %s\n\nline %d: %s\n" % args)

                if type(e.keyword) != str:
                    raise RuntimeError("Unable to parse keyword: %s", e.keyword)

                self._pop(e.keyword)
                valid = False

        self.samples = len(self.traces)

    @classmethod
    def empty(cls):
        return Log([], [], [], [])

    @classmethod
    def from_file(cls, file_path):
        lines = []
        ret = cls.empty()
        with open(file_path, "rb") as log_file:
            for line in log_file:
                if len(line) == 0:
                    continue
                lines.append(line.replace(b"\r\n", b""))

        ret._parse_lines(lines)
        return ret

    @classmethod
    def from_serial(cls, count, port, baud=115200, mini=True, hardware=False):
        opts = (" -t %d" % count, " -m" if mini else "", " -h" if hardware else "")
        ser = serial.Serial(
            port,
            baud,
            timeout=None,
            parity=serial.PARITY_NONE,
            xonxoff=False
        )
        ser.flush()
        ser.write(("sca%s%s%s\r\n" % opts).encode())
        s = b""
        while s[-2:] != b"> ":
            while ser.in_waiting == 0:
                continue
            while ser.in_waiting != 0:
                s += ser.read_all()

        ser.close()

        ret = cls.empty()
        lines = s.split(b"\r\n")
        ret._parse_lines(lines)
        return ret

    @classmethod
    def from_reports(cls, data_path, traces_path):
        ret = cls.empty()
        with open(data_path, "r") as data_file:
            reader = csv.reader(data_file)
            next(reader)
            for row in reader:
                if not row:
                    continue
                ret.plains.append(list(row[0:4]))
                ret.ciphers.append(list(row[4:8]))
                ret.keys.append(list(row[8:12]))

        with open(traces_path, "r") as traces_file:
            reader = csv.reader(traces_file)
            for row in reader:
                if not row:
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
