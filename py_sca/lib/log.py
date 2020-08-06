import serial
import csv
from warnings import warn
from lib.utils import decode_hamming, format_hex

START_TRACE = b"\xfe\xfe\xfe\xfe"
END_ACQ = b"\xff\xff\xff\xff"


class Read:
    @classmethod
    def file(cls, log_path):
        with open(log_path, "rb") as log_file:
            s = log_file.read()
        return s

    @classmethod
    def serial(cls, count, port, hardware=False, mini=True):
        opts = (" -t %d" % count, " -m" if mini else "", " -h" if hardware else "")
        with serial.Serial(port, 921_600, parity=serial.PARITY_NONE, xonxoff=False) as ser:
            ser.flush()
            ser.write(("sca%s%s%s\n" % opts).encode())
            s = ser.read_all()
            while s[-8:].find(END_ACQ) == -1:
                while ser.in_waiting == 0:
                    continue
                while ser.in_waiting != 0:
                    s += ser.read_all()
        return s


class Write:
    @classmethod
    def bytes(cls, s, path):
        with open(path, "wb+") as log_file:
            log_file.write(s)


class Keywords:
    MODE = "mode"
    DIRECTION = "direction"
    SENSORS = "sensors"
    TARGET = "target"
    KEY = "key"
    PLAIN = "plain"
    CIPHER = "cipher"
    SAMPLES = "samples"
    CODE = "code"
    WEIGHTS = "weights"

    META = [MODE, DIRECTION, SENSORS, TARGET]
    DATA = [KEY, PLAIN, CIPHER, SAMPLES, CODE]

    META_LEN = len(META)
    DATA_LEN = len(DATA)

    def __init__(self, meta=False):
        self.idx = 0
        self.meta = meta
        self.value = Keywords.DATA[0] if meta else Keywords.META[0]

    def __iter__(self):
        return self

    def __next__(self):
        current = self.value
        if self.meta:
            self.idx = (self.idx + 1) % Keywords.DATA_LEN
            self.value = Keywords.DATA[self.idx]
        else:
            if self.idx < Keywords.META_LEN:
                self.idx += 1
            if self.idx == Keywords.META_LEN:
                self.idx = 0
                self.meta = True
                self.value = Keywords.DATA[0]
            else:
                self.value = Keywords.META[self.idx]

        return current


class Data:
    def __init__(self, plains=None, ciphers=None, keys=None):
        self.plains = plains or []
        self.ciphers = ciphers or []
        self.keys = keys or []

    def clear(self):
        self.plains.clear()
        self.ciphers.clear()
        self.keys.clear()

    def to_csv(self, path):
        with open(path, "w") as file:
            header = ["p0", "p1", "p2", "p3", "c0", "c1", "c2", "c3", "k0", "k1", "k2", "k3"]
            writer = csv.writer(file)
            writer.writerow(header)
            for plain, cipher, key in zip(self.plains, self.ciphers, self.keys):
                writer.writerow(plain + cipher + key)

    @classmethod
    def from_csv(cls, path):
        plains = []
        ciphers = []
        keys = []
        with open(path, "r") as file:
            reader = csv.reader(file)
            next(reader)
            for row in reader:
                if not row:
                    continue
                plains.append(list(row[0:4]))
                ciphers.append(list(row[4:8]))
                keys.append(list(row[8:12]))

        return Data(plains, ciphers, keys)


class Meta:
    def __init__(self, mode=None, direction=None, target=0, sensors=0):
        self.mode = mode
        self.direction = direction
        self.target = target
        self.sensors = sensors

    def clear(self):
        self.mode = None
        self.direction = None
        self.target = 0
        self.sensors = 0

    @property
    def offset(self):
        return self.target * self.sensors


class Leak:
    def __init__(self, traces=None):
        if traces:
            self.size = len(traces) or 0
            self.reads = list(map(len, traces)) if traces else []
            self.traces = traces or []
        else:
            self.size = 0
            self.reads = []
            self.traces = []

    def clear(self):
        self.size = 0
        self.reads.clear()
        self.traces.clear()

    def to_csv(self, path):
        with open(path, "w") as file:
            writer = csv.writer(file)
            writer.writerows(self.traces)

    @classmethod
    def from_csv(cls, path):
        leaks = []
        with open(path, "r") as file:
            reader = csv.reader(file)
            for row in reader:
                if not row:
                    continue
                leaks.append(list(map(lambda x: int(x), row)))
        return Leak(leaks)


class Parser:
    def __init__(self, trace=None, data=None, meta=None):
        self.leak = trace or Leak()
        self.data = data or Data()
        self.meta = meta or Meta()

    @classmethod
    def from_bytes(cls, s):
        return Parser().parse_bytes(s)

    def pop(self):
        lens = list(map(len, [
            self.data.keys, self.data.plains, self.data.ciphers, self.leak.reads, self.leak.traces
        ]))
        n_min = min(lens)
        n_max = max(lens)

        if n_max == n_min:
            self.leak.reads.pop()
            self.leak.traces.pop()
            self.data.keys.pop()
            self.data.plains.pop()
            self.data.ciphers.pop()
            return

        while len(self.leak.reads) != n_min:
            self.leak.reads.pop()
        while len(self.leak.traces) != n_min:
            self.leak.traces.pop()
        while len(self.data.keys) != n_min:
            self.data.keys.pop()
        while len(self.data.plains) != n_min:
            self.data.plains.pop()
        while len(self.data.ciphers) != n_min:
            self.data.ciphers.pop()

    def clear(self):
        self.leak.clear()
        self.meta.clear()
        self.data.clear()

    def decode_hamming(self, c):
        return decode_hamming(c, self.meta.offset)

    def parse_bytes(self, s):
        keywords = Keywords()
        expected = next(keywords)
        valid = True
        lines = s.split(b"\r\n")
        if self.leak.size != 0:
            self.clear()
        for idx, line in enumerate(lines):
            if valid is False:
                valid = line == START_TRACE
                continue
            try:
                if self._parse_line(line, expected):
                    expected = next(keywords)
            except (ValueError, UnicodeDecodeError, RuntimeError) as e:
                args = (e, len(self.leak.traces), idx, line)
                warn("parsing error\nerror: %s\niteration: %d\nline %d: %s" % args)
                keywords = Keywords(keywords.meta)
                expected = next(keywords)
                valid = False
                self.pop()

        self.leak = Leak(self.leak.traces)
        return self

    def _parse_line(self, line, expected):
        if line in (END_ACQ, START_TRACE):
            return False
        split = line.strip().split(b":")
        try:
            keyword = str(split[0], "ascii").strip()
            data = split[1].strip()
        except IndexError:
            return False

        if keyword in Keywords.DATA and keyword != expected:
            raise RuntimeError("expected %s keyword not %s" % (expected, keyword))

        if keyword in (Keywords.MODE, Keywords.DIRECTION):
            setattr(self.meta, keyword, str(data, "ascii"))
        elif keyword in (Keywords.SENSORS, Keywords.TARGET):
            setattr(self.meta, keyword, int(data))
        elif keyword in (Keywords.KEY, Keywords.PLAIN, Keywords.CIPHER):
            getattr(self.data, keyword + "s").append(list(map(format_hex, data.split(b" "))))
        elif keyword == Keywords.SAMPLES:
            self.leak.reads.append(int(data))
        elif keyword == Keywords.CODE:
            self.leak.traces.append(list(map(self.decode_hamming, line[6:])))
        elif keyword == Keywords.WEIGHTS:
            self.leak.traces.append(list(map(int, data.split(b","))))
        else:
            return False

        if keyword in (Keywords.CODE, Keywords.WEIGHTS):
            n = self.leak.reads[-1]
            m = len(self.leak.traces[-1])
            if m != n:
                raise RuntimeError("trace lengths mismatch %d != %d" % (m, n))

        return True
