from lib import aes, logger, cpa
from lib import traces as tr
from lib.utils import duration
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
import time
from datetime import timedelta
import os
from itertools import product

COUNT_TRACES = 16384  # count of traces to record from FPGA
MODE_AES = "hw"
SYNC_TRACES = False

FILE_ARGS = (MODE_AES, COUNT_TRACES)
DATA_PATH = os.path.join("data", *["acquisition", MODE_AES])
IMG_PATH = os.path.join("media", *["img", "correlation", MODE_AES])

np.set_printoptions(formatter={'int': hex})


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
n = log.samples
traces = tr.crop(log.traces)
if SYNC_TRACES:
    traces = tr.sync(traces, stop=128)
traces = np.array(traces, dtype=np.float64)
traces -= traces.mean(axis=1).reshape((n, 1))
m = len(traces[0])
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
correlations = handler.correlations()
t_cor = time.perf_counter()
print("correlation successfully computed!\nelapsed: %s" %
      str(duration(t_cor, t_start)))

print("*** saving plots ***")
t_start = time.perf_counter()
plt.rcParams["figure.figsize"] = (16, 9)
for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
    for h in range(cpa.COUNT_HYP):
        if h == handler.key[i, j]:
            plt.plot(correlations[i, j, h], color="red",
                     label="key 0x%x" % h, zorder=1000)
        else:
            plt.plot(correlations[i, j, h], color="grey")

    img_args = tuple([i * aes.BLOCK_LEN + j]) + FILE_ARGS
    plt.title("Time Correlation byte %d (n=%d, m=%d)" % (img_args[0], n, m))
    plt.xlabel("Time Samples")
    plt.ylabel("Pearson Correlation")
    plt.legend()
    plt.tight_layout()
    plt.savefig(os.path.join(IMG_PATH, "sca_cor_b%d_%s_%d" % img_args))
    plt.close()

t_plot = time.perf_counter()
print("traces successfully saved!\nelapsed: %s" %
      str(duration(t_plot, t_start)))

print("exiting...")
