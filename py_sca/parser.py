import re
import matplotlib.pyplot as plt
import numpy as np
import py_sca.stats as stats
import scipy.signal as signal


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


log = Log.from_file("../data/sample_4096_seed_0.log")

print(log.plains)
print(log.ciphers)
print(log.keys)
print(log.traces)

m = len(log.traces)
l = len(log.traces[0])
n = 128

original_traces = np.array(log.traces)
filtered_traces = original_traces.copy()
# filtered_traces = stats.bandpass_filtering(filtered_traces, 200.)
original_traces = original_traces - np.mean(original_traces, axis=1).reshape((m, 1))
for idx in range(0, m):
    filtered_traces[idx] = stats.bandpass_filtering(filtered_traces[idx], 200e6)

plt.rcParams["figure.figsize"] = (16, 9)
# for idx in range(max(0, m - 4), m):
#    plt.plot(original_traces[idx])
#    plt.plot(filtered_traces[idx])
#    plt.show()

mean = filtered_traces.mean(axis=0)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="grey")
plt.show()
# mean = stats.bandpass_filtering(mean, 200e6)
# mean /= np.linalg.norm(mean, ord=np.inf)
# plt.plot(mean, color="green")
# plt.show()
mean = stats.bandpass_filtering_2(mean, 200e6)
mean /= np.linalg.norm(mean, ord=np.inf)

plt.plot(mean, color="red")
mean = stats.sliding_average(mean, n)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="blue")
plt.show()
mean = signal.resample(mean, 256)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="green")
plt.title("Average power consumption (slide=%d)" % n)
plt.show()
