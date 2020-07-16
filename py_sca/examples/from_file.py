import matplotlib.pyplot as plt
import numpy as np
import py_sca.stats as stats
import scipy.signal as signal
from py_sca.parser import Log

log = Log.from_file("../../data/sample_512_seed_0.log")

print(log.plains)
print(log.ciphers)
print(log.keys)
print(log.traces)

m = len(log.traces)
l = len(log.traces[0])
n = 128

original_traces = np.array(log.traces)
filtered_traces = original_traces.copy()

original_traces = original_traces - np.mean(original_traces, axis=1).reshape((m, 1))
for idx in range(0, m):
    filtered_traces[idx] = stats.bandpass_filtering(filtered_traces[idx], 200e6)

plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, m - 8), m):
    plt.plot(original_traces[idx])
    plt.plot(filtered_traces[idx])
    plt.show()

mean = filtered_traces.mean(axis=0)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="grey")
plt.show()

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
