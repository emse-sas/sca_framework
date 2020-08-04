from lib import aes, logger, cpa
from lib import traces as tr
from lib.utils import duration
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt
import time
import os
from itertools import product

COUNT_TRACES = 50_000  # count of traces to record from FPGA
MODE_AES = "hw"
SYNC_TRACES = False

FILE_ARGS = (MODE_AES, COUNT_TRACES)
DATA_PATH = os.path.join("..", *["data", "acquisition", MODE_AES])
IMG_PATH = os.path.join("..", *["media", "img", "correlation", MODE_AES])

np.set_printoptions(formatter={"int": hex})

# read FPGA acquisition csv log file
print("*** importing traces ***")
t_start = time.perf_counter()
log = logger.Log.from_reports(
    os.path.join(DATA_PATH, "report_data_%s_%d.csv" % FILE_ARGS),
    os.path.join(DATA_PATH, "report_traces_%s_%d.csv" % FILE_ARGS))
t_import = time.perf_counter()
print("import successful!\nelapsed: %s" % str(duration(t_import, t_start)))

print("*** processing traces ***")
t_start = time.perf_counter()
traces = tr.crop(log.traces, 400)
if SYNC_TRACES:
    traces = tr.sync(traces, stop=128)

fs = 200_000
fc = 13_000
order = 4
w = fc / (fs / 2)
# noinspection PyTupleAssignmentBalance
b, a = signal.butter(order, w, btype="highpass", output="ba")

for trace in traces:
    trace[:] = signal.filtfilt(b, a, trace)

n, m = traces.shape
t_proc = time.perf_counter()
print("processing successful!\nelapsed: %s" % str(duration(t_proc, t_start)))

print("*** creating handler ***")
t_start = time.perf_counter()
handler = cpa.Handler.from_log(log, traces)
t_handler = time.perf_counter()
print("handler successfully created!\nelapsed: %s" %
      str(duration(t_handler, t_start)))

print("*** computing correlation ***")
t_start = time.perf_counter()
cor = handler.correlations()
guess, maxs = handler.guess_stats(cor)
cor_max, cor_min = handler.guess_envelope(cor)
key = handler.key
t_cor = time.perf_counter()
print(f"correlation successfully computed!\nelapsed: {str(duration(t_cor, t_start))}")

print("*** saving plots ***")
t_start = time.perf_counter()
plt.rcParams["figure.figsize"] = (16, 9)
for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
    plot_args = (i * aes.BLOCK_LEN + j, n, 100 * maxs[i, j, guess[i, j]])
    plt.fill_between(range(m), cor_max[i, j], cor_min[i, j], color="grey")
    if key[i, j] != guess[i, j]:
        plt.plot(cor[i, j, key[i, j]], color="b", label="key 0x%02x" % key[i, j])
        plt.plot(cor[i, j, guess[i, j]], color="c", label="guess 0x%02x" % guess[i, j])
    else:
        plt.plot(cor[i, j, key[i, j]], color="r", label="key 0x%02x" % key[i, j])

    plt.title("Time Correlation byte %d (traces: %d, best correlation: %.2f%%)" % plot_args)
    plt.xlabel("Time Samples")
    plt.ylabel("Pearson Correlation")
    plt.legend()
    plt.tight_layout()
    plt.savefig(os.path.join(IMG_PATH, "sca_cor_%s_%d_b%d" % (FILE_ARGS + (plot_args[0],))))
    plt.show()
    plt.close()
t_plot = time.perf_counter()
print("traces successfully saved!\nelapsed: %s" % str(duration(t_plot, t_start)))

print("exiting...")
