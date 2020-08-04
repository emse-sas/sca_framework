import matplotlib.pyplot as plt
import numpy as np
from lib import logger
from lib import traces as tr
from lib.utils import duration
import os
import time
from scipy import fft

print(os.getcwd())

COUNT_TRACES = 50_000  # count of traces to record from FPGA
TRACES_TO_PLOT = 16  # count of raw traces to plot
MODE_AES = "hw"
LOG_SOURCE = "reports"
SYNC_TRACES = False
F_SAMPLING = 200e6

FILE_ARGS = (MODE_AES, COUNT_TRACES)
DATA_PATH = os.path.join("..", *["data", "acquisition", MODE_AES])
IMG_PATH = os.path.join("..", *["media", "img", "acquisition", MODE_AES])
LOG_PATH = os.path.join("..", *["data", "acquisition"])

log = None
print("*** logging traces ***")
t_start = time.perf_counter()
if LOG_SOURCE == "serial":
    # connect to FPGA via UART and start SCA acquisition
    log = logger.Log.from_serial(COUNT_TRACES, "COM5", hardware=MODE_AES == "hw", baud=921600)
elif LOG_SOURCE == "file":
    # read FPGA acquisition command prompt log file
    log = logger.Log.from_file(os.path.join(LOG_PATH, "cmd.log"))
elif LOG_SOURCE == "reports":
    # read FPGA acquisition csv log file
    log = logger.Log.from_reports(
        os.path.join(DATA_PATH, "report_data_%s_%d.csv" % FILE_ARGS),
        os.path.join(DATA_PATH, "report_traces_%s_%d.csv" % FILE_ARGS),
    )
else:
    raise RuntimeError("unexpected log source: %s" % LOG_SOURCE)
t_log = time.perf_counter()
print("traces successfully logged!\nelapsed: %s" % str(duration(t_log, t_start)))

# log SCA acquisition into CSV reporting files
print("*** exporting traces ***")
t_start = time.perf_counter()
log.report_data(os.path.join(DATA_PATH, "report_data_%s_%d.csv" % FILE_ARGS))
log.report_traces(os.path.join(DATA_PATH, "report_traces_%s_%d.csv" % FILE_ARGS))
t_export = time.perf_counter()
print("export successful!\nelapsed: %s" % str(duration(t_export, t_start)))

# Synchronize trace signals and compute average trace
print("*** processing traces ***")
t_start = time.perf_counter()
traces = tr.crop(log.traces)
if SYNC_TRACES:
    traces = tr.sync(traces, stop=128)
n, m = traces.shape
mean = np.array(traces).mean(axis=0)
smoothed = np.convolve(mean, np.ones((m // 11,)) / (m // 11), mode="same")
spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
freq = np.fft.fftfreq(spectrum.size, 1.0 / F_SAMPLING)[:spectrum.size // 2] / 1e6
f = np.argsort(freq)
t_proc = time.perf_counter()
print("processing successful!\nelapsed: %s" % str(duration(t_proc, t_start)))

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
plt.tight_layout()
plt.savefig(os.path.join(IMG_PATH, "sca_raw_%s_%d" % FILE_ARGS))
plt.show()
plt.close()

plt.plot(mean, color="grey", label="raw data")
if MODE_AES != "hw":
    plt.plot(smoothed, color="blue", label="filtered data")
plt.title("Average power consumption (traces: %d, samples: %d, sensors: %d)" % plot_args)
plt.xlabel("Time Samples")
plt.ylabel("Hamming Weight")
plt.legend()
plt.tight_layout()
plt.savefig(os.path.join(IMG_PATH, "sca_avg_%s_%d" % FILE_ARGS))
plt.show()
plt.close()

plt.plot(freq[f], spectrum[f], color="red", label="raw data")
plt.title("Average power consumption FFT (traces: %d, samples: %d, sensors: %d)" % plot_args)
plt.xlabel("Frequency (MHz)")
plt.ylabel("Hamming Weight")
plt.tight_layout()
plt.savefig(os.path.join(IMG_PATH, "sca_avg_fft_%s_%d" % FILE_ARGS))
plt.show()
plt.close()
t_plot = time.perf_counter()
print("traces successfully saved!\nelapsed: %s" % str(duration(t_plot, t_start)))

print("exiting...")
