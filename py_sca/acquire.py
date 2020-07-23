import matplotlib.pyplot as plt
import numpy as np
from lib import aes, logger, traces as tr
import time
from datetime import timedelta
from scipy import fft

SEED_NO = 0
COUNT_TRACES = 512 # count of traces to record from FPGA
AVG_LEN = COUNT_TRACES  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 32  # count of raw traces to plot
HARDWARE_AES = True
LOG_SOURCE = "serial"

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)


log = None
print("*** logging traces ***")
t_start = time.time()
if LOG_SOURCE == "serial":
    # connect to FPGA via UART and start SCA acquisition
    log = logger.Log.from_serial(COUNT_TRACES, "COM5", hardware=HARDWARE_AES)
elif LOG_SOURCE == "file":
    # read FPGA acquisition command prompt log file
    log = logger.Log.from_file("data/cmd%s_%d.log" % file_args)
elif LOG_SOURCE == "reports":
    # read FPGA acquisition csv log file
    log = logger.Log.from_reports(
        "data/report_data%s_%d.csv" % file_args,
        "data/report_traces%s_%d.csv" % file_args)
else:
    raise RuntimeError("unexpected log source: %s" % LOG_SOURCE)
t_log = time.time()
print("traces successfully logged!\nelapsed: %s" % str(timedelta(seconds=t_log - t_start)))


# log SCA acquisition into CSV reporting files
print("*** exporting traces ***")
t_start = time.time()
log.report_data("data/acquisition/report_data%s_%d.csv" % file_args)
log.report_traces("data/acquisition/report_traces%s_%d.csv" % file_args)
t_export = time.time()
print("export successful!\nelapsed: %s" % str(timedelta(seconds=t_export - t_start)))

# Synchronize trace signals and compute average trace
print("*** processing traces ***")
t_start = time.time()
traces = tr.sync(tr.crop(log.traces), stop=1024)
n = len(traces)
mean = np.array(traces).mean(axis=0)
spectrum = np.fromiter(map(lambda y: np.absolute(y), fft.fft(mean - np.mean(mean))), dtype=np.float)
smoothed = np.convolve(mean, np.ones((AVG_LEN,)) / AVG_LEN, mode="valid")
t_proc = time.time()
print("processing successful!\nelapsed: %s" % str(timedelta(seconds=t_proc - t_start)))


print("*** saving plots ***")
t_start = time.time()
plt.rcParams["figure.figsize"] = (16, 9)
for idx in range(max(0, n - TRACES_TO_PLOT), n):
    plt.plot(traces[idx])

plt.title("Raw power consumptions (n=%d)" % n)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weights")
plt.savefig("media/img/acquisition/sca_raw%s_%d" % file_args)
plt.close()

plt.plot(mean, color="grey", label="raw data")
plt.plot(smoothed, color="blue", label="filtered data")
plt.title("Average power consumption (n=%d)" % n)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weight")
plt.savefig("media/img/acquisition/sca_avg%s_%d" % file_args)
plt.close()

plt.plot(spectrum, color="red", label="raw data")
plt.title("Average power consumption FFT (n=%d)" % n)
plt.xlabel("Frequency")
plt.ylabel("Hamming Weight")
plt.savefig("media/img/acquisition/sca_avg_fft%s_%d" % file_args)
plt.close()
t_plot = time.time()
print("traces successfully saved!\nelapsed: %s" % str(timedelta(seconds=t_plot - t_start)))

print("exiting...")
