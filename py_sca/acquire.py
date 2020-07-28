import matplotlib.pyplot as plt
import numpy as np
from lib import aes, logger
from lib import traces as tr
import time
from datetime import timedelta
from scipy import fft

COUNT_TRACES = 16 # count of traces to record from FPGA
AVG_LEN = 512  # sliding average convolution kernel size
TRACES_TO_PLOT = 32  # count of raw traces to plot
HARDWARE_AES = True
LOG_SOURCE = "serial"
SYNC_TRACES = False
F_SAMPLING = 200e6

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)

log = None
print("*** logging traces ***")
t_start = time.perf_counter()
if LOG_SOURCE == "serial":
    # connect to FPGA via UART and start SCA acquisition
    log = logger.Log.from_serial(COUNT_TRACES, "COM5", hardware=HARDWARE_AES)
elif LOG_SOURCE == "file":
    # read FPGA acquisition command prompt log file
    log = logger.Log.from_file("data/cmd.log")
elif LOG_SOURCE == "reports":
    # read FPGA acquisition csv log file
    log = logger.Log.from_reports(
        "data/report_data%s_%d.csv" % file_args,
        "data/report_traces%s_%d.csv" % file_args)
else:
    raise RuntimeError("unexpected log source: %s" % LOG_SOURCE)
t_log = time.perf_counter()
print("traces successfully logged!\nelapsed: %s" % str(timedelta(seconds=t_log - t_start)))


# log SCA acquisition into CSV reporting files
print("*** exporting traces ***")
t_start = time.perf_counter()
log.report_data("data/acquisition/report_data%s_%d.csv" % file_args)
log.report_traces("data/acquisition/report_traces%s_%d.csv" % file_args)
t_export = time.perf_counter()
print("export successful!\nelapsed: %s" % str(timedelta(seconds=t_export - t_start)))

# Synchronize trace signals and compute average trace
print("*** processing traces ***")
t_start = time.perf_counter()
traces = tr.pad(log.traces)
if SYNC_TRACES:
    traces = tr.sync(traces, stop=128)
n, m = traces.shape
mean = np.array(traces).mean(axis=0)
smoothed = np.convolve(mean, np.ones((AVG_LEN,)) / AVG_LEN, mode="same")
spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
freq = np.fft.fftfreq(spectrum.size, 1.0 / F_SAMPLING)[:spectrum.size//2] / 1e6
f = np.argsort(freq)  
t_proc = time.perf_counter()
print("processing successful!\nelapsed: %s" % str(timedelta(seconds=t_proc - t_start)))


print("*** saving plots ***")
t_start = time.perf_counter()
plot_args = (n, m, log.sensors)
plt.rcParams["figure.figsize"] = (16, 9)
for d in range(max(0, n - TRACES_TO_PLOT), n):
    plt.plot(traces[d], label="sample %d" % d)

plt.title("Raw power consumptions (traces: %d, samples: %d, sensors: %d)" % plot_args)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weights")
plt.legend()
plt.savefig("media/img/acquisition/sca_raw%s_%d" % file_args)
plt.close()

plt.plot(mean, color="grey", label="raw data")
if not HARDWARE_AES:
    plt.plot(smoothed, color="blue", label="filtered data")
plt.title("Average power consumption (traces: %d, samples: %d, sensors: %d)" % plot_args)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weight")
plt.legend()
plt.savefig("media/img/acquisition/sca_avg%s_%d" % file_args)
plt.close()

plt.plot(freq[f], spectrum[f], color="red", label="raw data")
plt.title("Average power consumption FFT (traces: %d, samples: %d, sensors: %d)" % plot_args)
plt.xlabel("Frequency (MHz)")
plt.ylabel("Hamming Weight")
plt.savefig("media/img/acquisition/sca_avg_fft%s_%d" % file_args)
plt.close()
t_plot = time.perf_counter()
print("traces successfully saved!\nelapsed: %s" % str(timedelta(seconds=t_plot - t_start)))

print("exiting...")
