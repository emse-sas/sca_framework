"""Side channel acquisition data parsing, logging and reporting

This module is designed as a class library providing *entity classes*
to represent the side channel data acquired from SoC.

The module provides binary data parsing in order to read
acquisition data from a serial source or a binary file and
retrieve it in the entity classes.

All the entity classes of the module provide CSV support
in order to allow processing acquisition data without parsing.
Furthermore it allows formatting data in a more human-readable format
"""

import csv
from warnings import warn

import serial

from lib.utils import decode_hamming, check_hex

START_TRACE = b"\xfe\xfe\xfe\xfe"  # Start traces tag
END_ACQ = b"\xff\xff\xff\xff"  # End acquisition tag


class Read:
    """Static class for binary read operations

    """

    @classmethod
    def file(cls, log_path) -> bytes:
        """Reads binary data from file

        Parameters
        ----------
        log_path : str
            path to the file to read
        Returns
        -------
        bytes
            binary content of the file
        """
        with open(log_path, "rb") as log_file:
            s = log_file.read()
        return s

    @classmethod
    def serial(cls, count, port, hardware=False, mini=True):
        """Launch acquisition and reads binary data from serial port

        This method sends the side channel acquisition command
        to the SoC and then reads the serial output.

        Parameters
        ----------
        count : int
            Count of power consumption traces to acquire
        port : str
            Serial port to read
        hardware : bool
            If true, the encryption is performed by hardware
        mini :
            If true, the traces data will be compressed using
            hamming weight encoding

        Returns
        -------
        bytes
            binary data read from serial port

        """
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
    """Static class for binary write operations

    """

    @classmethod
    def bytes(cls, s, path):
        """Write binary data to a file

        Parameters
        ----------
        s : bytes
            binary data to write
        path :
            path to file

        """
        with open(path, "wb+") as log_file:
            log_file.write(s)


class Keywords:
    """Iterator over the binary log keywords

    This iterator allows to represent the keywords and
    the order in which they appear in the binary log consistently.

    This feature is useful when browsing log lines in order
    to avoid parsing a sequence that came in the wrong order.

    At each iteration the next expected keyword is returned.

    Notes
    -----
    - meta attribute allows to avoid try parsing again keywords
    when an error occurs and the iterator is reset

    Attributes
    ----------
    idx: int
        Current keyword index
    meta: bool
        True if the meta-data keyword have already been browsed
    value: str
        Value of the current keyword

    """

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
    DELIMITER = b":"

    META = [MODE, DIRECTION, SENSORS, TARGET]
    DATA = [KEY, PLAIN, CIPHER, SAMPLES, CODE]

    META_LEN = len(META)
    DATA_LEN = len(DATA)

    def __init__(self, meta=False):
        """Construct a new Keyword iterator

        Parameters
        ----------
        meta : bool
            If true, meta-data keywords will be ignored
        """
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
    """Encryption channel data

    This class is designed to represent AES encryption data
    for each trace acquired.

    In order to ease and accelerate parsing
    each of the AES block data are represented as 4 32-bit
    hexadecimal string.

    Attributes
    ----------
    plains: list[list[str]]
        Plains words for each trace
    ciphers: list[list[str]]
        Cipher words for each trace
    keys: list[list[str]]
        Keys words for each trace

    Raises
    ------
    ValueError
        If the three list attributes does not have the same length

    """

    def __init__(self, plains=None, ciphers=None, keys=None):
        """Construct an object by giving attributes values

        Parameters
        ----------
        plains: list[list[str]], optional
            Plains words for each trace
        ciphers: list[list[str]], optional
            Cipher words for each trace
        keys: list[list[str]], optional
        Keys words for each trace
        """

        self.plains = plains or []
        self.ciphers = ciphers or []
        self.keys = keys or []

        if len(self.plains) != len(self.ciphers) or len(self.plains) != len(self.keys):
            raise ValueError("Plains, ciphers and keys must have the same length")

    def clear(self):
        """Clears all the attributes

        """
        self.plains.clear()
        self.ciphers.clear()
        self.keys.clear()

    def to_csv(self, path):
        """Exports encryption data to a CSV file

        Parameters
        ----------
        path : str
            Path to the CSV file to write

        """
        with open(path, "w", newline="") as file:
            header = ["p0", "p1", "p2", "p3", "c0", "c1", "c2", "c3", "k0", "k1", "k2", "k3"]
            writer = csv.writer(file, delimiter=";")
            writer.writerow(header)
            for plain, cipher, key in zip(self.plains, self.ciphers, self.keys):
                writer.writerow(plain + cipher + key)

    @classmethod
    def from_csv(cls, path):
        """Imports encryption data from CSV file

        Parameters
        ----------
        path : str
            Path to the CSV to read

        Returns
        -------
        Data
            Imported encryption data
        """
        plains = []
        ciphers = []
        keys = []
        with open(path, "r", newline="") as file:
            reader = csv.reader(file, delimiter=";")
            next(reader)
            for row in reader:
                if not row:
                    continue
                plains.append(list(row[0:4]))
                ciphers.append(list(row[4:8]))
                keys.append(list(row[8:12]))

        return Data(plains, ciphers, keys)


class Meta:
    """Meta-data of acquisition and encryption channel

   This class is designed to represent additional infos
   about the current side-channel acquisition run.

    Attributes
    ----------
    mode : str
        Encryption mode
    direction : str
        Encryption direction, either encrypt or decrypt
    target : int
        Sensors calibration target value
    sensors : int
        Count of sensors
    iterations : int
        Count of traces acquired
    offset : int
        If the traces are ASCII encoded, code offset
    """

    def __init__(self, mode=None, direction=None, target=0, sensors=0, iterations=0, offset=0):
        """Construct an object with given meta-data

        Parameters
        ----------
        mode : str, optional
            Encryption mode
        direction : str, optional
            Encryption direction, either encrypt or decrypt
        target : int, optional
            Sensors calibration target value
        sensors : int, optional
            Count of sensors
        iterations : int, optional
            Count of traces acquired
        offset : int, optional
            If the traces are ASCII encoded, code offset
        """
        self.mode = mode
        self.direction = direction
        self.target = target
        self.sensors = sensors
        self.iterations = iterations
        self.offset = offset

    def clear(self):
        """Resets meta-data

        """
        self.mode = None
        self.direction = None
        self.target = 0
        self.sensors = 0
        self.iterations = 0
        self.offset = 0

    def to_csv(self, path):
        """Export meta-data to a CSV file

        Parameters
        ----------
        path : str
            Path to the CSV file to write

        """
        with open(path, "w", newline="") as file:
            writer = csv.writer(file, delimiter=";")
            rows = self.__dict__
            header = list(rows.keys())
            values = list(rows.values())
            writer.writerows([header, values])

    @classmethod
    def from_csv(cls, path):
        """Import meta-data from CSV file

        Parameters
        ----------
        path : str
            Path to the CSV to read

        Returns
        -------
        Meta
            Imported meta-data
        """
        with open(path, "r", newline="") as file:
            reader = csv.reader(file, delimiter=";")
            next(reader)
            row = next(reader)
        return Meta(row[0], row[1], int(row[2]), int(row[3]), int(row[4]), int(row[5]))


class Leak:
    """Side-channel power consumption leakage data

    This class represent the power consumption traces
    acquired during encryption in order to process these

    Attributes
    ----------
    samples: list[int]
        count of samples for each traces
    traces: list[list[int]]
        power consumption leakage signal for each acquisition

    """

    def __init__(self, traces=None):
        """Parse raw traces data

        Parameters
        ----------
        traces : list[list[int]], optional
            power consumption leakage signal for each acquisition

        """
        if traces:
            self.samples = list(map(len, traces)) if traces else []
            self.traces = traces or []
        else:
            self.samples = []
            self.traces = []

    def clear(self):
        """Clears leakage data

        """
        self.samples.clear()
        self.traces.clear()

    def to_csv(self, path):
        """Exports leakage data to CSV

        Parameters
        ----------
        path : str
            Path to the CSV file to write

        """
        with open(path, "w", newline="") as file:
            writer = csv.writer(file, delimiter=";")
            writer.writerows(self.traces)

    @classmethod
    def from_csv(cls, path):
        """Imports leakage data from CSV

        Parameters
        ----------
        path : str
            Path to the CSV to read

        Returns
        -------
        Leak
            Imported leak data
        """
        leaks = []
        with open(path, "r", newline="") as file:
            reader = csv.reader(file, delimiter=";")
            for row in reader:
                if not row:
                    continue
                leaks.append(list(map(lambda x: int(x), row)))
        return Leak(leaks)


class Parser:
    """Binary data parser

    This class is designed to parse binary acquisition data
    and store parsed data in the entity classes in order
    to later import and export it.


    Attributes
    ----------
    leak : Leak
        power leakage data
    data : Data
        encryption data
    meta : Meta
        acquisition meta-data

    See Also
    --------
    Keywords : iterator representing the keyword sequence

    """

    def __init__(self, leak=None, data=None, meta=None):
        """Construct an object with given attributes

        Parameters
        ----------
        leak : Leak, optional
            power leakage data
        data : Data, optional
            encryption data
        meta : Meta, optional
            acquisition meta-data
        """
        self.leak = leak or Leak()
        self.data = data or Data()
        self.meta = meta or Meta()

    @classmethod
    def from_bytes(cls, s):
        """Construct an object from given binary data

        Parameters
        ----------
        s : bytes
            binary data

        Returns
        -------
        Parser
            Object containing parsed data
        """
        return Parser().parse_bytes(s)

    def pop(self):
        """Pops acquired value while data lengths mismatch

        This method allows to guarantee that the data contained
        in the parser will always have the same length which is
        the number of traces parsed.

        Returns
        -------
        Parser
            reference to self
        """
        lens = list(map(len, [
            self.data.keys, self.data.plains, self.data.ciphers, self.leak.samples,
            self.leak.traces
        ]))
        n_min = min(lens)
        n_max = max(lens)

        if n_max == n_min:
            self.leak.samples.pop()
            self.leak.traces.pop()
            self.data.keys.pop()
            self.data.plains.pop()
            self.data.ciphers.pop()
            return

        while len(self.leak.samples) != n_min:
            self.leak.samples.pop()
        while len(self.leak.traces) != n_min:
            self.leak.traces.pop()
        while len(self.data.keys) != n_min:
            self.data.keys.pop()
        while len(self.data.plains) != n_min:
            self.data.plains.pop()
        while len(self.data.ciphers) != n_min:
            self.data.ciphers.pop()

        return self

    def clear(self):
        """Clears all the parser data

        """
        self.leak.clear()
        self.meta.clear()
        self.data.clear()

    def parse_bytes(self, s):
        """Parses the given bytes to retrieve acquisition data
        
        Parameters
        ----------
        s : bytes
            binary data

        Returns
        -------
        Parser
            reference to self
        """
        keywords = Keywords()
        expected = next(keywords)
        valid = True
        lines = s.split(b"\r\n")
        for idx, line in enumerate(lines):
            if valid is False:
                valid = line == START_TRACE
                continue
            try:
                if self.__parse_line(line, expected):
                    expected = next(keywords)
            except (ValueError, UnicodeDecodeError, RuntimeError) as e:
                args = (e, len(self.leak.traces), idx, line)
                warn("parsing error\nerror: {}\niteration: {:d}\nline {:d}: {}".format(*args))
                keywords = Keywords(keywords.meta)
                expected = next(keywords)
                valid = False
                self.pop()
        self.meta.iterations += len(self.leak.traces)
        return self

    def __decode_hamming(self, c):
        return decode_hamming(c, self.meta.offset)

    def __parse_line(self, line, expected):
        if line in (END_ACQ, START_TRACE):
            return False
        split = line.strip().split(Keywords.DELIMITER)
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
            getattr(self.data, keyword + "s").append(list(map(check_hex, data.split(b" "))))
        elif keyword == Keywords.SAMPLES:
            self.leak.samples.append(int(data))
        elif keyword == Keywords.CODE:
            self.leak.traces.append(list(map(self.__decode_hamming, line[6:])))
        elif keyword == Keywords.WEIGHTS:
            self.leak.traces.append(list(map(int, data.split(b","))))
        else:
            return False

        if keyword == Keywords.TARGET:
            self.meta.offset = self.meta.sensors * self.meta.target

        if keyword in (Keywords.CODE, Keywords.WEIGHTS):
            n = self.leak.samples[-1]
            m = len(self.leak.traces[-1])
            if m != n:
                raise RuntimeError("trace lengths mismatch %d != %d" % (m, n))

        return True
