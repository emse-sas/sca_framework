from lib import aes, logger, traces as tr
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

SEED_NO = 0
COUNT_TRACES = 16384  # count of traces to record from FPGA
AVG_LEN = COUNT_TRACES  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 64  # count of raw traces to plot
HARDWARE_AES = True

np.set_printoptions(formatter={'int': hex})

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)

# read FPGA acquisition csv log file
log = logger.Log.from_reports(
    "data/acquisition/report_data%s_%d.csv" % file_args,
    "data/acquisition/report_traces%s_%d.csv" % file_args)

print(log)

n = len(log.plains)
traces = tr.sync(tr.crop(log.traces))
traces = np.array(traces, dtype=np.float)
traces -= traces.mean(axis=1).reshape((n, 1))

m = len(traces[0])
plains = []
ciphers = []
keys = []
sub_traces = [[{} for j in range(4)] for i in range(4)]
for d in range(n):
    plains.append(aes.words_to_block(log.plains[d]))
    ciphers.append(aes.words_to_block(log.ciphers[d]))
    keys.append(aes.words_to_block(log.keys[d]))
    for i in range(4):
        for j in range(4):
            try:
                sub_traces[i][j][plains[d][i][j]].append(traces[d])
            except KeyError:
                sub_traces[i][j][plains[d][i][j]] = [traces[d]]

for i in range(4):
    for j in range(4):
        for k in range(256):
            try:
                sub_traces[i][j][k] = np.mean(sub_traces[i][j][k], axis=0) 
            except KeyError:
                sub_traces[i][j][k] = np.full((m,), log.offset, dtype=np.float64)
        sub_traces[i][j] = np.array(list(sub_traces[i][j].values()))

hypothesis = [[0 for k in range(256)] for hyp in range(256)]
for hyp in range(256):
    for k in range(256):
        hypothesis[hyp][k] = bin(aes.S_BOX[k ^ hyp] ^ k).count("1")

m = len(traces[0])
sub_traces[0][0] = sub_traces[0][0].T
correlation = np.zeros((256, m))
for hyp in range(256):
    for t in range(m):
        correlation[hyp][t] = stats.pearsonr(hypothesis[hyp], sub_traces[0][0][t])[0]

    if hyp == keys[0][0][0]:
        plt.plot(correlation[hyp], color="red", zorder=1000)
    else:
        plt.plot(correlation[hyp], color="grey")

plt.show()
print(correlation)
