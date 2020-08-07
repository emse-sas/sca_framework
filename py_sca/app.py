import os
import time
from datetime import timedelta
from itertools import product

import matplotlib.pyplot as plt
import numpy as np
from scipy import fft
from scipy import signal

from lib import log, traces as tr, aes, cpa
from lib.utils import format_sizeof

DATA_PATH = os.path.join("..", *["data", "acquisition"])
IMG_PATH_ACQ = os.path.join("..", *["media", "img", "acquisition"])
IMG_PATH_COR = os.path.join("..", *["media", "img", "correlation"])


def operation_decorator(title, message):
    def decorator(function):
        def wrapper(*args, **kwargs):
            print(f"\n*** {title} ***")
            t_start = time.perf_counter()
            result = function(*args, **kwargs)
            t_end = time.perf_counter()
            print(f"{message}\nelapsed: {str(timedelta(seconds=t_end - t_start))}")
            return result

        return wrapper

    return decorator


def plot_decorator(title, xlabel, ylabel, path, name):
    def decorator(function):
        def wrapper(*args, **kwargs):
            result = function(*args, **kwargs)
            plt.title(title)
            plt.xlabel(xlabel)
            plt.ylabel(ylabel)
            plt.legend()
            plt.tight_layout()
            plt.savefig(os.path.join(path, name))
            plt.show()
            plt.close()
            return result

        return wrapper

    return decorator


@operation_decorator("acquiring bytes", "acquisition successful!")
def acquire(source, mode, count, path=None):
    path = path or os.path.join(DATA_PATH, mode)
    print(f"source: {source}")
    if source[:3] == "COM":
        s = log.Read.serial(count, source, hardware=mode == "hw")
        log.Write.bytes(s, os.path.join(path, f"cmd_{mode}_{count}.log"))
    else:
        s = log.Read.file(os.path.join(path, f"{source}_{mode}_{count}.log"))
    print(f"buffer size: {format_sizeof(len(s))}")
    return s


@operation_decorator("parsing bytes", "parsing successful!")
def parse(s, count):
    parser = log.Parser.from_bytes(s)
    print(f"traces parsed: {parser.meta.iterations}/{count}")
    return parser


@operation_decorator("exporting data", "export successful!")
def export_log(leak, data, meta, path=None):
    path = path or os.path.join(DATA_PATH, meta.mode)
    data.to_csv(os.path.join(path, f"data_{meta.mode}_{meta.iterations}.csv"))
    leak.to_csv(os.path.join(path, f"leak_{meta.mode}_{meta.iterations}.csv"))
    meta.to_csv(os.path.join(path, f"meta_{meta.mode}_{meta.iterations}.csv"))


@operation_decorator("importing data", "import successful!")
def import_log(mode, count, path=None):
    path = path or os.path.join(DATA_PATH, mode)
    data = log.Data.from_csv(os.path.join(path, f"data_{mode}_{count}.csv"))
    leak = log.Leak.from_csv(os.path.join(path, f"leak_{mode}_{count}.csv"))
    meta = log.Meta.from_csv(os.path.join(path, f"meta_{mode}_{count}.csv"))
    print(f"traces imported: {meta.iterations}/{count}")
    return leak, data, meta


@operation_decorator("processing traces", "processing successful!")
def process_acquisition(leak, f_s):
    # traces = tr.pad(parser.leak.traces, parser.meta.offset)
    traces = np.array(tr.crop(leak.traces))
    mean = traces.mean(axis=0)
    spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
    freq = np.fft.fftfreq(spectrum.size, 1.0 / f_s)
    return traces, mean, spectrum, freq


@operation_decorator("plotting data", "plot successful!")
def plot_acquisition(processed, meta, path=None, limit=None, scale=1e6):
    traces, mean, spectrum, freq = processed
    n, m = traces.shape
    freq = freq[:spectrum.size // 2] / scale
    f = np.argsort(freq)
    path = path or os.path.join(IMG_PATH_ACQ, meta.mode)
    limit = limit or len(traces)
    suffix = f"(iterations: {meta.iterations}, samples: {m}, sensors: {meta.sensors})"

    @plot_decorator(f"Raw power consumptions {suffix}",
                    "Time Samples", "Hamming Weights",
                    path, f"sca_raw_{meta.mode}_{meta.iterations}")
    def plot_raw():
        return [plt.plot(traces[d], label=f"sample {d}") for d in range(0, limit)]

    @plot_decorator(f"Average power consumption {suffix}",
                    "Time Samples", "Hamming Weights",
                    path, f"sca_avg_{meta.mode}_{meta.iterations}")
    def plot_mean():
        return plt.plot(mean, color="grey")

    @plot_decorator(f"Average power consumption FFT {suffix}",
                    "Frequency (MHz)", "Hamming Weight",
                    path, f"sca_fft_{meta.mode}_{meta.iterations}")
    def plot_fft():
        return plt.plot(freq[f], spectrum[f], color="red")

    plt.rcParams["figure.figsize"] = (16, 9)
    plot_raw()
    plot_mean()
    plot_fft()


@operation_decorator("processing traces", "processing successful!")
def process_filter(leak, f_s):
    traces = np.array(tr.crop(leak.traces))
    f_c = 13e6
    order = 4
    w = f_c / (f_s / 2)
    b, a, *_ = signal.butter(order, w, btype="highpass", output="ba")

    for trace in traces:
        trace[:] = signal.filtfilt(b, a, trace)

    return traces, b, a


@operation_decorator("creating handler", "handler successfully create!")
def create_handler(data, traces):
    blocks = np.array([aes.words_to_block(block) for block in data.plains], dtype=np.uint8)
    return cpa.Handler(blocks, aes.words_to_block(data.keys[0]), traces)


@operation_decorator("computing correlation", "correlation computed!")
def correlate(handler):
    cor = handler.correlations()
    return cor


@operation_decorator("computing correlation", "correlation computed!")
def guess_key(handler, cor):
    guess, maxs, exact = handler.guess_stats(cor)
    print("key:")
    print(handler.key)
    print("guess:")
    print(guess)
    print("correct guesses: %d/16" % np.count_nonzero(exact))
    print(exact)
    return guess, maxs, exact


@operation_decorator("plotting data", "plot successful!")
def plot_correlations(meta, cor, key, stats, envelope, path=None):
    path = path or os.path.join(IMG_PATH_COR, meta.mode)
    guess, maxs, exact = stats
    cor_max, cor_min = envelope
    _, _, m = cor_max.shape
    plt.rcParams["figure.figsize"] = (16, 9)

    for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
        b = i * aes.BLOCK_LEN + j
        c = 100 * maxs[i, j, guess[i, j]]
        plt.fill_between(range(m), cor_max[i, j], cor_min[i, j], color="grey")

        @plot_decorator(
            f"Correlation byte {b} (iterations: {meta.iterations}, best correlation: {c:.2f}%)",
            "Time Samples",
            "Pearson Correlation",
            path, f"sca_cor_{meta.mode}_{meta.iterations}_b{b}"
        )
        def plot_guess():
            if key[i, j] != guess[i, j]:
                plt.plot(cor[i, j, key[i, j]], color="b", label="key 0x%02x" % key[i, j])
                plt.plot(cor[i, j, guess[i, j]], color="c", label="guess 0x%02x" % guess[i, j])
            else:
                plt.plot(cor[i, j, key[i, j]], color="r", label="key 0x%02x" % key[i, j])

        plot_guess()
