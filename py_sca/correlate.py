from lib import aes, logger, cpa
from lib import traces as tr
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
import time
from datetime import timedelta

COUNT_TRACES = 16384 # count of traces to record from FPGA
HARDWARE_AES = True
SYNC_TRACES = False

np.set_printoptions(formatter={'int': hex})

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)

# read FPGA acquisition csv log file
print("*** importing traces ***")
t_start = time.perf_counter()
log = logger.Log.from_reports(
    "data/acquisition/report_data%s_%d.csv" % file_args,
    "data/acquisition/report_traces%s_%d.csv" % file_args)
t_import = time.perf_counter()
print("import successful!\nelapsed: %s" % str(timedelta(seconds=t_import - t_start)))

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
print("processing successful!\nelapsed: %s" % str(timedelta(seconds=t_proc - t_start)))

print("*** creating handler ***")
t_start = time.perf_counter()
handler = cpa.Handler.from_log(log, traces)
t_handler = time.perf_counter()
print("handler successfully created!\nelapsed: %s" % str(timedelta(seconds=t_handler - t_start)))

print("*** computing correlation ***")
t_start = time.perf_counter()
correlations = handler.correlations()
t_cor = time.perf_counter()
print("correlation successfully computed!\nelapsed: %s" % str(timedelta(seconds=t_cor - t_start)))

print("*** saving plots ***")
t_start = time.perf_counter()
plt.rcParams["figure.figsize"] = (16, 9)
for i in range(aes.BLOCK_LEN):
    for j in range(aes.BLOCK_LEN):
        for h in range(cpa.COUNT_HYP):
            if h == handler.key[i, j]:
                plt.plot(correlations[i, j, h], color="red", label="key 0x%x" % h, zorder=1000)
            else:
                plt.plot(correlations[i, j, h], color="grey")
        
        img_args = tuple([i * aes.BLOCK_LEN + j]) + file_args
        plt.title("Time Correlation byte %d (n=%d, m=%d)" % (img_args[0], n, m))
        plt.xlabel("Time Samples")
        plt.ylabel("Pearson Correlation")
        plt.legend()
        plt.savefig("media/img/correlation/b%d/sca_cor%s_%d" % img_args)
        plt.close()

t_plot = time.perf_counter()
print("traces successfully saved!\nelapsed: %s" % str(timedelta(seconds=t_plot - t_start)))

print("exiting...")



            