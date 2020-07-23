from lib import aes, logger, traces as tr
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt

SEED_NO = 0
COUNT_TRACES = 4  # count of traces to record from FPGA
AVG_LEN = COUNT_TRACES  # sliding average convolution kernel size
F_SAMPLING = 200e6  # sampling frequency of the acquisition system
TRACES_TO_PLOT = 32  # count of raw traces to plot
HARDWARE_AES = True

np.set_printoptions(formatter={'int': hex})

file_args = ("_hw" if HARDWARE_AES else "", COUNT_TRACES)

# read FPGA acquisition csv log file
log = logger.Log.from_reports(
    "data/acquisition/report_data%s_%d.csv" % file_args,
    "data/acquisition/report_traces%s_%d.csv" % file_args)

print(log)

n = len(log.plains)
handler = aes.Handler(key=aes.words_to_block(log.keys[0]))
traces = tr.sync(tr.crop(log.traces))
traces = np.array(traces, dtype=np.float)
traces -= traces.mean(axis=1).reshape((n, 1))
plains = []
ciphers = []
keys = []
hypothesis = []
m = len(traces[0])

hyp_key = np.zeros((4, 4), dtype=np.ubyte)
for d in range(n):
    plains.append(aes.words_to_block(log.plains[d]))
    ciphers.append(aes.words_to_block(log.ciphers[d]))
    keys.append(aes.words_to_block(log.keys[d]))
    hypothesis.append([])
    for hyp in range(256):
        hyp_key[0][0] = hyp
        handler = aes.Handler(key=hyp_key)
        handler.encrypt(plains[-1])
        before = handler.blocks[aes.N_ROUNDS][aes.Stages.START]
        after = handler.blocks[aes.N_ROUNDS][aes.Stages.SUB_BYTES]
        hypothesis[-1].append(bin(before[0][0] ^ after[0][0]).count("1"))

hypothesis = np.array(hypothesis).T
traces = traces.T
correlation = np.zeros((256, m))
for i in range(256):
    for j in range(m):
        correlation[i][j] = stats.pearsonr(hypothesis[i], traces[j])[0]

print(hypothesis)
print(traces)

for i in range(256):
    plt.plot(correlation[i])

plt.show()
print(correlation)