import matplotlib.pyplot as plt
import numpy as np
from lib.logger import Log

SEED_NO = 0
COUNT_TRACES = 32  # count of traces to record from FPGA
AVG_LEN = 64  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 8  # count of raw traces to plot
HARDWARE_AES = False
LOG_SOURCE = "serial"
REPORT_CSV = False

file_args = (COUNT_TRACES, SEED_NO, "_hw" if HARDWARE_AES else "")
log = None
if LOG_SOURCE == "serial":
    # connect to FPGA via UART and start SCA acquisition
    log = Log.from_serial(COUNT_TRACES, "COM5", hardware=HARDWARE_AES)
elif LOG_SOURCE == "file":
    # read FPGA acquisition command prompt log file
    log = Log.from_file("data/cmd_%d_s%d%s.log" % file_args)
elif LOG_SOURCE == "reports":
    # read FPGA acquisition csv log file
    log = Log.from_reports(
        "data/report_data_%d_s%d%s.log" % file_args,
        "data/report_traces_%d_s%d%s.log" % file_args)
else:
    raise RuntimeError("Unexpected log source: %s" % LOG_SOURCE)

# log SCA acquisition into CSV reporting files
if REPORT_CSV:
    log.report_data("data/report_data.csv")
    log.report_traces("data/report_traces.csv")

# Crop traces and remove offsets
traces = log.cropped_traces()
n = len(traces)

plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, n - TRACES_TO_PLOT), n):
    plt.plot(traces[idx])
    plt.title("Raw power consumption %d (n=%d)" % (idx, n))
    plt.ylabel("Hamming Weight")
    plt.xlabel("Time Samples")
    plt.show()

# Compute the average trace signal and normalize it
mean = np.array(traces).mean(axis=0)
plt.plot(mean, color="grey", label="raw data")

# Smooth data
mean = np.convolve(mean, np.ones((AVG_LEN,)) / AVG_LEN, mode="valid")
plt.plot(mean, color="blue", label="filtered data")
plt.title("Average power consumption (n=%d)" % n)
plt.ylabel("Hamming Weight")
plt.xlabel("Time Samples")
plt.show()
