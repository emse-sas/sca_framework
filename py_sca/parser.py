import re
import matplotlib.pyplot as plt
import numpy as np
import py_sca.stats as stats


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
                elif re.match(r"([0-9]+,\s*)*\s*[0-9]+", line):
                    split = line.split(",")
                    traces.append(list(map(lambda x: int(x), split))[:8000])

        return Log(plains, ciphers, keys, traces)


log = Log.from_file("../data/cmd.log")

print(log.plains)
print(log.ciphers)
print(log.keys)
print(log.traces)

l = len(log.traces[0])
m = len(log.traces)
n = 32

for idx in range(0, m):
    log.traces[idx] = stats.sliding_average(log.traces[idx], n)

for idx in range(m - 10, m):
    plt.plot(log.traces[idx])
    plt.show()
traces = np.array(log.traces)
mean = traces.mean(axis=0)
plt.plot(mean, color="red")
plt.show()

