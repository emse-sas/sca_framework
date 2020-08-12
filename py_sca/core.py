"""High-level API module.

This module provides core features to ease the writing
of an application based on the library :

* Display application status
* Measure timing performance
* Acquire, import and export data
* Perform data filtering and plots
* Perform files creation and deletion routines

"""

import functools
import os
import time
from datetime import timedelta
from itertools import product

import matplotlib.pyplot as plt
import numpy as np
from scipy import fft
from scipy import signal

from lib import log, traces as tr, aes, cpa
from lib.utils import format_sizeof, try_create_dir, remove_subdir_files

MODES = ["hw", "sw"]  # available encryption source
F_SAMPLING = 200e6  # sensors sampling frequency
ACQ_DIR = "acquisition"  # label for the acquisition directory
COR_DIR = "correlation"  # label for the correlation  directory
DATA_PATH = os.path.join("..", "data")
MEDIA_PATH = os.path.join("..", "media")
IMG_PATH = os.path.join(MEDIA_PATH, "img")
DATA_PATH_ACQ = os.path.join(DATA_PATH, ACQ_DIR)
DATA_PATH_COR = os.path.join(DATA_PATH, COR_DIR)
IMG_PATH_ACQ = os.path.join(IMG_PATH, ACQ_DIR)
IMG_PATH_COR = os.path.join(IMG_PATH, COR_DIR)


def operation_decorator(title, message):
    """Executes a function and prints messages and duration

    Parameters
    ----------
    title : str
        Starting message.

    message : str
        End message on success.
    Returns
    -------
        function
            Decorated method.

    """

    def decorator(function):
        @functools.wraps(function)
        def wrapper(*args, **kwargs):
            print(f"\n*** {title} ***")
            t_start = time.perf_counter()
            result = function(*args, **kwargs)
            t_end = time.perf_counter()
            print(f"{message}\nelapsed: {str(timedelta(seconds=t_end - t_start))}")
            return result

        return wrapper

    return decorator


def __plot_decorator(title, xlabel, ylabel, path, name):
    def decorator(function):
        @functools.wraps(function)
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
def acquire_bin(source, mode, iterations, path=None):
    """Acquires binary data from serial or file.

    If ``source`` is a serial channel such as ``COM1``,
    the acquired data is write-back to a log file.
    ``path`` must be the path of the write-back file.

    Otherwise, it reads the file with the prefix given by ``source``.
    Therefore ``path`` must be the path of the file to read.

    Notes
    -----

    * The default path is the data path created by ``setup.py``.

    Parameters
    ----------
    source : str
        Serial channel or file prefix.
    mode : str
        Encryption mode.
    iterations : int
        Requested count of traces.
    path : str, optional
        Export or source path.

    Returns
    -------
    bytes
        Binary data string

    """
    path = path or os.path.join(DATA_PATH_ACQ, mode)
    print(f"source: {source}")
    if source[:3] == "COM":
        s = log.read.serial(iterations, source, hardware=mode == "hw")
        log.write.bytes(s, os.path.join(path, f"cmd_{mode}_{iterations}.log"))
    else:
        s = log.read.file(os.path.join(path, f"{source}_{mode}_{iterations}.log"))
    print(f"buffer size: {format_sizeof(len(s))}")
    return s


@operation_decorator("parsing bytes", "parsing successful!")
def parse_bin(s, iterations=None):
    """Parses binary data.

    Parameters
    ----------
    s : bytes
        Binary data string.
    iterations : int, optional
        Requested count of traces.

    Returns
    -------
    Parser
        Parser initialized with binary data.

    """
    parser = log.Parser.from_bytes(s)
    iterations = f"/{iterations}" if iterations else ""
    print(f"traces parsed: {parser.meta.iterations}{iterations}")
    return parser


@operation_decorator("exporting data", "export successful!")
def export_csv(iterations, mode, meta=None, leak=None, data=None, path=None):
    """Exports parser data to CSV files.

    If ``iterations`` and ``mode`` are not specified
    ``meta`` must be given.

    Otherwise these parameters must represent the expected values
    received by the SoC in order to track unexpected behavior.

    Parameters
    ----------
    iterations : int
        Requested count of traces.
    mode : str
        Encryption mode.
    meta : py_sca.lib.log.Meta, optional
        Meta-data.
    leak : py_sca.lib.log.Leak, optional
        Leakage data.
    data : py_sca.lib.log.Data, optional
        Encryption data.
    path : str, optional
        Path of CSV files.

    """

    path = path or os.path.join(DATA_PATH_ACQ, mode)
    if data:
        data.to_csv(os.path.join(path, f"data_{mode}_{iterations}.csv"))
    if leak:
        leak.to_csv(os.path.join(path, f"leak_{mode}_{iterations}.csv"))
    if meta:
        meta.to_csv(os.path.join(path, f"meta_{mode}_{iterations}.csv"))


@operation_decorator("importing data", "import successful!")
def import_csv(iterations, mode, path=None):
    """Imports CSV files and parse data.

    Parameters
    ----------
    iterations : int
        Requested count of traces.
    mode : str
        Encryption mode.
    path : str, optional
        Path of CSV files.
    Returns
    -------

    leak : py_sca.lib.log.Leak
        Leakage data.
    data : py_sca.lib.log.Data
        Encryption data.
    meta : py_sca.lib.log.Meta
        Meta-data.

    """
    path = path or os.path.join(DATA_PATH_ACQ, mode)
    leak = log.Leak.from_csv(os.path.join(path, f"leak_{mode}_{iterations}.csv"))
    data = log.Data.from_csv(os.path.join(path, f"data_{mode}_{iterations}.csv"))
    meta = log.Meta.from_csv(os.path.join(path, f"meta_{mode}_{iterations}.csv"))
    print(f"traces imported: {meta.iterations}/{iterations}")
    return leak, data, meta


@operation_decorator("processing traces", "processing successful!")
def filter_traces(leak):
    """Filters raw traces to ease correlation.

    Parameters
    ----------
    leak : py_sca.lib.log.Leak
        Leakage data.

    Returns
    -------
    traces : np.ndarray
        Filtered traces matrix.
    b : np.ndarray
        Filter's denominator coefficients.
    a : np.ndarray
        Filter's numerator coefficients.

    """
    traces = np.array(tr.crop(leak.traces))
    f_c = 13e6
    order = 4
    w = f_c / (F_SAMPLING / 2)
    b, a, *_ = signal.butter(order, w, btype="highpass", output="ba")

    for trace in traces:
        trace[:] = signal.filtfilt(b, a, trace)

    return traces, b, a


@operation_decorator("creating handler", "handler successfully create!")
def init_handler(data, traces):
    """Creates a correlation handler.

    Parameters
    ----------
    data : py_sca.lib.log.Data
        Encryption data.
    traces : np.ndarray
        Traces matrix.

    Returns
    -------
    py_sca.lib.cpa.Handler
        Handler initialized to perform correlation over ``traces``.

    """
    blocks = np.array([aes.words_to_block(block) for block in data.plains], dtype=np.uint8)
    return cpa.Handler(blocks, aes.words_to_block(data.keys[0]), traces)


@operation_decorator("plotting data", "plot successful!")
def plot_acq(leak, meta, path=None, limit=None, scale=1e6):
    """Process acquisition data, plots and saves images.

    Parameters
    ----------
    leak : py_sca.lib.log.Leak
        Leakage data.
    meta : py_sca.lib.log.Meta
        Meta-data.
    path : str
        Images saving path.
    limit : int
        Count of raw acquisition curves to plot.
    scale : int, float
        Frequency scale for spectrum plot.

    Returns
    -------
    traces : np.ndarray
        Traces matrix.
    mean : np.ndarray
        Average trace.
    spectrum : np.ndarray
        Spectrum of the average.
    freq : np.ndarray
        Spectrum's frequencies.

    """

    traces = np.array(tr.crop(leak.traces))
    mean = traces.mean(axis=0)
    spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
    freq = np.fft.fftfreq(spectrum.size, 1.0 / F_SAMPLING)
    n, m = traces.shape
    freq = freq[:spectrum.size // 2] / scale
    f = np.argsort(freq)
    path = path or os.path.join(IMG_PATH_ACQ, meta.mode)
    limit = limit or len(traces)
    suffix = f"(iterations: {meta.iterations}, samples: {m}, sensors: {meta.sensors})"

    @__plot_decorator(f"Raw power consumptions {suffix}",
                      "Time Samples", "Hamming Weights",
                      path, f"sca_raw_{meta.mode}_{meta.iterations}")
    def plot_raw():
        return [plt.plot(traces[d], label=f"sample {d}") for d in range(0, limit)]

    @__plot_decorator(f"Average power consumption {suffix}",
                      "Time Samples", "Hamming Weights",
                      path, f"sca_avg_{meta.mode}_{meta.iterations}")
    def plot_mean():
        return plt.plot(mean, color="grey")

    @__plot_decorator(f"Average power consumption FFT {suffix}",
                      "Frequency (MHz)", "Hamming Weight",
                      path, f"sca_fft_{meta.mode}_{meta.iterations}")
    def plot_fft():
        return plt.plot(freq[f], spectrum[f], color="red")

    plt.rcParams["figure.figsize"] = (16, 9)
    plot_raw()
    plot_mean()
    plot_fft()

    return traces, mean, spectrum, freq


@operation_decorator("plotting data", "plot successful!")
def plot_cor(handler, meta, path=None):
    """Plots temporal correlations and save images.

    Parameters
    ----------
    handler : py_sca.lib.cpa.Handler
        Initialized handler.
    meta : py_sca.lib.log.Meta
        Meta-data.
    path : str
        Images saving path.

    """

    path = path or os.path.join(IMG_PATH_COR, meta.mode)
    cor = handler.correlations()
    guess, maxs, exact = handler.guess_stats(cor)
    cor_max, cor_min = handler.guess_enveloppe(cor)
    key = handler.key
    _, _, m = cor_max.shape
    plt.rcParams["figure.figsize"] = (16, 9)

    for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
        b = i * aes.BLOCK_LEN + j
        c = 100 * maxs[i, j, guess[i, j]]
        plt.fill_between(range(m), cor_max[i, j], cor_min[i, j], color="grey")

        @__plot_decorator(
            f"Correlation byte {b} (iterations: {meta.iterations}, best correlation: {c:.2f}%)",
            "Time Samples",
            "Pearson Correlation",
            path, f"sca_cor_{meta.mode}_{meta.iterations}_b{b}")
        def plot_guess():
            if key[i, j] != guess[i, j]:
                plt.plot(cor[i, j, key[i, j]], color="b", label=f"key 0x{key[i, j]:02x}")
                plt.plot(cor[i, j, guess[i, j]], color="c", label=f"guess 0x{guess[i, j]:02x}")
            else:
                plt.plot(cor[i, j, key[i, j]], color="r", label=f"key 0x{key[i, j]:02x}")

        plot_guess()


@operation_decorator("removing logs", "remove success!")
def remove_logs():
    """Removes all the log files, CSV and binary.

    """
    remove_subdir_files(DATA_PATH_ACQ)


@operation_decorator("removing acquisition images", "remove success!")
def remove_acquisition_images():
    """Removes all the acquisition images.

    """
    remove_subdir_files(IMG_PATH_ACQ)


@operation_decorator("removing correlation images", "remove success!")
def remove_correlation_images():
    """Removes all the correlations images.

    """
    remove_subdir_files(IMG_PATH_COR)


@operation_decorator("creating log dirs", "create success!")
def create_logs_dir():
    """Creates data directories.

    """
    try_create_dir(DATA_PATH)
    __create_subdir(DATA_PATH_ACQ)
    __create_subdir(DATA_PATH_COR)


@operation_decorator("creating images dirs", "create success!")
def create_images_dir():
    """Creates images directories.

    """
    try_create_dir(MEDIA_PATH)
    try_create_dir(IMG_PATH)
    __create_subdir(IMG_PATH_ACQ)
    __create_subdir(IMG_PATH_COR)


def __create_subdir(path=None):
    if path:
        try_create_dir(path)
    for mode in MODES:
        try_create_dir(os.path.join(path, mode))
