import re
import matplotlib.pyplot as plt


class Log:
    def __init__(self, plains, ciphers, keys, traces):
        self.plains = plains
        self.ciphers = ciphers
        self.keys = keys
        self.traces = traces

    @classmethod
    def from_file(cls, filepath):
        with open(filepath, "r") as log_file:
            plains = []
            ciphers = []
            keys = []
            traces = []
            for line in log_file:
                line = line.lower()
                if line.startswith("key"):
                    split = line.split(" ")
                    keys.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))

                elif line.startswith("plain"):
                    split = line.split(" ")
                    plains.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))

                elif line.startswith("cipher"):
                    split = line.split(" ")
                    ciphers.append(list(map(lambda x: hex(int(x, 16)), split[1:-1])))
                elif re.match("([0-9]+,\s*)*\s*[0-9]+", line):
                    split = line.split(", ")
                    traces.append(list(map(lambda x: int(x), split)))

        return Log(plains, ciphers, keys, traces)


log = Log.from_file("../data/cmd.log")

print(log.plains)
print(log.ciphers)
print(log.keys)
print(log.traces)

for trace in log.traces:
    plt.plot(trace)
    plt.show()
