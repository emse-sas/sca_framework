import matplotlib.pyplot as plt
import numpy as np
from lib.logger import Log
SEED_NO = 0
COUNT_TRACES = 4  # count of traces to record from FPGA
AVG_LEN = 32  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 8  # count of raw traces to plot
HARDWARE_AES = True
LOG_SOURCE = "serial"

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)

log = None
print("*** logging traces ****")
if LOG_SOURCE == "serial":
    # connect to FPGA via UART and start SCA acquisition
    log = Log.from_serial(COUNT_TRACES, "COM5", hardware=HARDWARE_AES)
elif LOG_SOURCE == "file":
    # read FPGA acquisition command prompt log file
    log = Log.from_file("data/cmd%s_%d.log" % file_args)
elif LOG_SOURCE == "reports":
    # read FPGA acquisition csv log file
    log = Log.from_reports(
        "data/report_data%s_%d.log" % file_args,
        "data/report_traces%s_%d.log" % file_args)
else:
    raise RuntimeError("unexpected log source: %s" % LOG_SOURCE)

print("traces successfully logged!")

# log SCA acquisition into CSV reporting files
print("*** exporting traces ****")
log.report_data("data/acquisition/report_data%s_%d.csv" % file_args)
log.report_traces("data/acquisition/report_traces%s_%d.csv" % file_args)
print("export successful!")

print("*** saving traces plots ***")
# Crop traces and remove offsets
traces = log.cropped_traces()
n = len(traces)

plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, n - TRACES_TO_PLOT), n):
    plt.plot(traces[idx])

plt.title("Raw power consumptions (n=%d)" % n)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weights")
plt.savefig("media/img/acquisition/sca_raw%s_%d" % file_args)
plt.close()

# Compute the average trace signal and normalize it
mean = np.array(traces).mean(axis=0)
plt.plot(mean, color="grey", label="raw data")

# Smooth data
mean = np.convolve(mean, np.ones((AVG_LEN,)) / AVG_LEN, mode="valid")
plt.plot(mean, color="blue", label="filtered data")
plt.title("Average power consumption (n=%d)" % n)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weight")
plt.savefig("media/img/acquisition/sca_avg%s_%d" % file_args)

print("traces successfully saved!")
print("exiting...")