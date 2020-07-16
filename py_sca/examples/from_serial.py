import matplotlib.pyplot as plt
import numpy as np
import py_sca.stats as stats
from py_sca.parser import Log

TRACES_COUNT = 2  # count of traces to record from FPGA
SLIDING_CONV_SIZE = 128  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 8  # count of raw traces to plot
LOG_TO_CSV = True  # true to log the serial output to csv files

# connect to FPGA via UART and start SCA acquisition
log = Log.from_serial(TRACES_COUNT, "COM5")

# log SCA acquisition into CSV files
if LOG_TO_CSV:
    log.report_data("../../data/report_data.csv")
    log.report_traces("../../data/report_traces.csv")

# Crop traces and remove offset
original_traces = np.array(log.cropped_traces())
original_traces = original_traces - np.mean(original_traces, axis=1).reshape((TRACES_COUNT, 1))

filtered_traces = original_traces.copy()
# High band filtering to retrieve round information in the noise
for idx in range(0, TRACES_COUNT):
    filtered_traces[idx] = stats.bandpass_filtering(filtered_traces[idx], F_SAMPLING)

plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, TRACES_COUNT - TRACES_TO_PLOT), TRACES_COUNT):
    plt.plot(original_traces[idx])
    plt.plot(filtered_traces[idx])
    plt.show()

# Compute the average trace signal and normalize it
mean = filtered_traces.mean(axis=0)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="grey")

# Low band filtering to extract round peaks from the noise
mean = stats.bandpass_filtering_2(mean, F_SAMPLING)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="red")

# Smooth data
mean = stats.sliding_average(mean, SLIDING_CONV_SIZE)
mean /= np.linalg.norm(mean, ord=np.inf)
plt.plot(mean, color="blue")
plt.title("Average power consumption (slide=%d) (traces=%d)" % (SLIDING_CONV_SIZE, TRACES_COUNT))
plt.xlabel("Normalized value")
plt.ylabel("Time sample")
plt.show()
