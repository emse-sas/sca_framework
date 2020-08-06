from lib import aes, logger, cpa
from lib import traces as tr
from lib.utils import format_timing
import numpy as np
from scipy import signal
import matplotlib.pyplot as plt
import time
import os
from itertools import product

t_init = time.perf_counter()
COUNT_TRACES = 2**17  # count of traces to record from FPGA
MODE_AES = "hw"

FILE_ARGS = (MODE_AES, COUNT_TRACES)
DATA_PATH = os.path.join("..", *["data", "acquisition", MODE_AES])
IMG_PATH = os.path.join("..", *["media", "img", "correlation", MODE_AES])

np.set_printoptions(formatter={"int": hex})

# read FPGA acquisition csv log file
print("*** importing traces ***")
t_start = time.perf_counter()
leak = logger.Leak.from_csv(os.path.join(DATA_PATH, "trace_%s_%d.csv" % FILE_ARGS))
data = logger.Data.from_csv(os.path.join(DATA_PATH, "data_%s_%d.csv" % FILE_ARGS))
parser = logger.Parser(leak, data)
t_import = time.perf_counter()
print(format_timing("%d traces imported successfully!" % leak.size, t_import, t_start))

print("*** processing traces ***")
t_start = time.perf_counter()
leak = tr.pad(parser.leak.traces, parser.meta.offset)

fs = 200_000
fc = 13_000
order = 4
w = fc / (fs / 2)
# noinspection PyTupleAssignmentBalance
b, a = signal.butter(order, w, btype="highpass", output="ba")

for trace in leak:
    trace[:] = signal.filtfilt(b, a, trace)

n, m = leak.shape
t_proc = time.perf_counter()
print(format_timing("processing successful!", t_proc, t_start))

print("*** creating handler ***")
t_start = time.perf_counter()
blocks = np.array([aes.words_to_block(block) for block in data.plains], dtype=np.uint8, copy=False)
handler = cpa.Handler(blocks, aes.words_to_block(data.keys[0]), leak)
t_handler = time.perf_counter()
print(format_timing("handler successfully created!", t_handler, t_start))

print("*** computing correlation ***")
t_start = time.perf_counter()
cor = handler.correlations()
key = handler.key
t_cor = time.perf_counter()
print("correlation successfully computed!", t_cor, t_start)

print("*** computing guess ***")
t_start = time.perf_counter()
guess, maxs, exact = handler.guess_stats(cor)
cor_max, cor_min = handler.guess_envelope(cor)
t_cor = time.perf_counter()
print("key:")
print(handler.key)
print("guess:")
print(guess)
print("correct guesses: %d/16" % np.count_nonzero(exact))
print(exact)
t_guess = time.perf_counter()
print(format_timing("guess successfully computed!", t_guess, t_start))

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

print(format_timing("exiting correlation...", t_plot, t_init))
