import matplotlib.pyplot as plt
import numpy as np
import py_sca.stats as stats
from py_sca.parser import Log

TRACES_COUNT = 512
SLIDING_CONV_SIZE = 128

log = Log.from_serial(TRACES_COUNT, "COM5")

TRACES_COUNT = len(log.traces)
l = len(log.traces[0])

original_traces = np.array(log.traces)
filtered_traces = original_traces.copy()
# filtered_traces = stats.bandpass_filtering(filtered_traces, 200.)
original_traces = original_traces - np.mean(original_traces, axis=1).reshape((TRACES_COUNT, 1))
for idx in range(0, TRACES_COUNT):
    filtered_traces[idx] = stats.bandpass_filtering(filtered_traces[idx], 200e6)

plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, TRACES_COUNT - 8), TRACES_COUNT):
    plt.plot(original_traces[idx])
    plt.plot(filtered_traces[idx])
    plt.show()

mean = filtered_traces.mean(axis=0)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="grey")
# mean = stats.bandpass_filtering(mean, 200e6)
# mean /= np.linalg.norm(mean, ord=np.inf)
# plt.plot(mean, color="green")
# plt.show()
mean = stats.bandpass_filtering_2(mean, 200e6)
mean /= np.linalg.norm(mean, ord=np.inf)

plt.plot(mean, color="red")
mean = stats.sliding_average(mean, SLIDING_CONV_SIZE)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="blue")
plt.title("Average power consumption (slide=%d) (traces=%d)" % (SLIDING_CONV_SIZE, TRACES_COUNT))
plt.show()
