import matplotlib.pyplot as plt
import numpy as np
from lib import log
from lib import traces as tr
from lib.utils import format_timing, format_sizeof
import os
import time
from scipy import fft

t_init = time.perf_counter()

COUNT_TRACES = 2 ** 17  # count of traces to record from FPGA
TRACES_TO_PLOT = 16  # count of raw traces to plot
MODE_AES = "hw"
LOG_SOURCE = "serial"
SYNC_TRACES = False
F_SAMPLING = 200e6

FILE_ARGS = (MODE_AES, COUNT_TRACES)
DATA_PATH = os.path.join("..", *["data", "acquisition", MODE_AES])
IMG_PATH = os.path.join("..", *["media", "img", "acquisition", MODE_AES])
LOG_PATH = os.path.join("..", *["data", "acquisition"])

parser = None
print("*** acquiring bytes ***")
t_start = time.perf_counter()
if LOG_SOURCE == "serial":
    s = log.Read.serial(COUNT_TRACES, "COM5", hardware=MODE_AES == "hw")
    log.Write.bytes(s, os.path.join(DATA_PATH, "cmd_%s_%d.log" % FILE_ARGS))
elif LOG_SOURCE == "file":
    s = log.Read.file(os.path.join(DATA_PATH, "cmd_%s_%d.log" % FILE_ARGS))
else:
    raise RuntimeError("unexpected log source: %s" % LOG_SOURCE)
t_read = time.perf_counter()
print(format_timing("%s successfully read!" % format_sizeof(len(s)), t_read, t_start))

print("*** parsing bytes ***")
t_start = time.perf_counter()
parser = log.Parser.from_bytes(s)
del s
t_parse = time.perf_counter()
print(format_timing("%d traces successfully parsed!" % parser.leak.size, t_parse, t_start))

# log SCA acquisition into CSV reporting files
print("*** exporting traces ***")
t_start = time.perf_counter()
parser.data.to_csv(os.path.join(DATA_PATH, "data_%s_%d.csv" % FILE_ARGS))
parser.leak.to_csv(os.path.join(DATA_PATH, "trace_%s_%d.csv" % FILE_ARGS))
t_export = time.perf_counter()
print(format_timing("export successful!", t_export, t_start))

# Synchronize trace signals and compute average trace
print("*** processing traces ***")
t_start = time.perf_counter()
# traces = tr.pad(parser.leak.traces, parser.meta.offset)
traces = tr.crop(parser.leak.traces)
n, m = traces.shape
mean = np.array(traces).mean(axis=0)
smoothed = np.convolve(mean, np.ones((m // 11,)) / (m // 11), mode="same")
spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
freq = np.fft.fftfreq(spectrum.size, 1.0 / F_SAMPLING)[:spectrum.size // 2] / 1e6
f = np.argsort(freq)
t_proc = time.perf_counter()
print(format_timing("processing successful!", t_proc, t_start))

print("*** saving plots ***")
t_start = time.perf_counter()
plot_args = (n, m, parser.meta.sensors)
plt.rcParams["figure.figsize"] = (16, 9)

for d in range(0, TRACES_TO_PLOT):
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
print(format_timing("plots successfully saved!", t_plot, t_start))

print(format_timing("exiting acquisition...", t_plot, t_init))
