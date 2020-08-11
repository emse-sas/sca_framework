"""API module to create a side-channel app

This module provides high-level features to ease the writing
of an application based on our side channel library.

The functions of this module provide :

* Application status logging
* Time performance measurement
* Plotting acquisition and correlation curves


"""

import os
import time
import functools
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
    """Decorate a function by printing messages and duration

    Parameters
    ----------
    title : str
        Title of the operation to perform, starting message

    message : str
        End message on success
    Returns
    -------
        function
            Decorated method

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


def plot_decorator(title, xlabel, ylabel, path, name):
    """Decorate a plot homogeneously among the application

    This decorator plots and save figures when called

    Parameters
    ----------
    title : str
        Title of the plot
    xlabel : str
        X-axis label
    ylabel : str
        Y-axis label
    path : str
        Path to save the image plot
    name : str
        Name of the image plot file

    Returns
    -------
    function
        Decorator
    """

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

        wrapper.__doc__ = function.__doc__
        return wrapper

    return decorator


@operation_decorator("acquiring bytes", "acquisition successful!")
def acquire(source, mode, count, path=None):
    """Wrapper for acquisition methods provided in the library

    This method wraps binary reads from file or serial.

    Parameters
    ----------
    source : str
        Source channel our source file prefix
    mode : str
        Encryption source
    count : int
        Count of power consumption traces to acquire
    path : str, optional
        If the source is a serial channel, path of the write-back file.
        Else, path where to read the binary data

    Returns
    -------
    bytes
        Binary data acquired

    See Also
    --------
    log.Read : static class for binary reading

    """
    path = path or os.path.join(DATA_PATH_ACQ, mode)
    print(f"source: {source}")
    if source[:3] == "COM":
        s = log.Read.serial(count, source, hardware=mode == "hw")
        log.Write.bytes(s, os.path.join(path, f"cmd_{mode}_{count}.log"))
    else:
        s = log.Read.file(os.path.join(path, f"{source}_{mode}_{count}.log"))
    print(f"buffer size: {format_sizeof(len(s))}")
    return s


@operation_decorator("parsing bytes", "parsing successful!")
def parse(s, iterations):
    """Wrapper for parsing with library methods

    Parameters
    ----------
    s : bytes
        binary data acquired
    iterations : int
        Requested count of power consumption traces acquired

    Returns
    -------
    Parser
        newly created parser

    """
    parser = log.Parser.from_bytes(s)
    print(f"traces parsed: {parser.meta.iterations}/{iterations}")
    return parser


@operation_decorator("exporting data", "export successful!")
def export_log(leak, data, meta, iterations=None, path=None):
    """Wrapper for exporting CSV acquisition data

    This wrapper allows exporting all the parsed data in a single call

    Parameters
    ----------
    leak : log.Leak
        leakage data
    data : log.Data
        Encryption data
    meta : log.Meta
        Meta-data
    iterations : int
        Requested count of power consumption traces acquired
    path : str
        Path where to save CSV files

    """
    iterations = iterations or meta.iterations
    path = path or os.path.join(DATA_PATH_ACQ, meta.mode)
    data.to_csv(os.path.join(path, f"data_{meta.mode}_{iterations}.csv"))
    leak.to_csv(os.path.join(path, f"leak_{meta.mode}_{iterations}.csv"))
    meta.to_csv(os.path.join(path, f"meta_{meta.mode}_{iterations}.csv"))


@operation_decorator("importing data", "import successful!")
def import_log(mode, count, path=None):
    """Wrapper for importing CSV acquisition data

    This method allows reading acquisition data without the need
    of a parser.

    Parameters
    ----------
    mode : str
        Encryption source
    count : int
        Requested count of power consumption traces
    path : str, optional
        Path where to load CSV files
    Returns
    -------
    tuple[log.Leak, log.Data, log.Meta]
        Parsed data

    """
    path = path or os.path.join(DATA_PATH_ACQ, mode)
    leak = log.Leak.from_csv(os.path.join(path, f"leak_{mode}_{count}.csv"))
    data = log.Data.from_csv(os.path.join(path, f"data_{mode}_{count}.csv"))
    meta = log.Meta.from_csv(os.path.join(path, f"meta_{mode}_{count}.csv"))
    print(f"traces imported: {meta.iterations}/{count}")
    return leak, data, meta


@operation_decorator("processing traces", "processing successful!")
def process_acquisition(leak):
    """Acquisition basic data processing

    Parameters
    ----------
    leak : log.Leak
        leakage data

    Returns
    -------
    tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]
        - Cropped traces
        - Average trace
        - Spectrum of the average
        - Frequency axis for the spectrum

    """
    # traces = tr.pad(parser.leak.traces, parser.meta.offset)
    traces = np.array(tr.crop(leak.traces))
    mean = traces.mean(axis=0)
    spectrum = np.absolute(fft.fft(mean - np.mean(mean)))
    freq = np.fft.fftfreq(spectrum.size, 1.0 / F_SAMPLING)
    return traces, mean, spectrum, freq


@operation_decorator("plotting data", "plot successful!")
def plot_acquisition(processed, meta, path=None, limit=None, scale=1e6):
    """Acquisition data plotting

    Parameters
    ----------
    processed : tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]
        - Cropped traces
        - Average trace
        - Spectrum of the average
        - Frequency axis for the spectrum
    meta : log.Meta
        Meta-data
    path : str
        Path where to save plots
    limit : int
        Count of raw acquisition curves to plot
    scale : int, float
        Frequency scale for spectrum plot

    See Also
    --------
    process_acquisition : process acquisition data

    """
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
def process_filter(leak):
    """Filters raw traces

    Parameters
    ----------
    leak : log.Leak
        leakage data

    Returns
    -------
    tuple[np.ndarray, np.ndarray, np.ndarray]
        - Filtered traces
        - Filter denominator coefficients
        - Filter numerator coefficients

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
def create_handler(data, traces):
    """Wrapper for the creation of an attack handler

    Parameters
    ----------
    data : log.Data
        Encryption data
    traces : np.ndarray
        Power consumption traces

    Returns
    -------
    cpa.Handler
        Handler ready to perform correlation

    """
    blocks = np.array([aes.words_to_block(block) for block in data.plains], dtype=np.uint8)
    return cpa.Handler(blocks, aes.words_to_block(data.keys[0]), traces)


@operation_decorator("computing correlation", "correlation computed!")
def correlate(handler):
    """Wrapper for correlation computation

    Parameters
    ----------
    handler : cpa.Handler
        Initialized handler

    Returns
    -------
    np.ndarray
        Temporal correlations

    """
    cor = handler.correlations()
    return cor


@operation_decorator("computing correlation", "correlation computed!")
def guess_key(handler, cor):
    """Wrapper for key guessing

    Parameters
    ----------
    handler : cpa.Handler
        Initialized handler
    cor : np.ndarray
        Temporal correlations

    Returns
    -------
    tuple[np.ndarray, np.ndarray, np.ndarray]
        - Guessed key
        - Maximum temporal correlations
        - Exact guesses matrix

    """
    guess, maxs, exact = handler.guess_stats(cor)
    print("key:")
    print(handler.key)
    print("guess:")
    print(guess)
    print(f"correct guesses: {np.count_nonzero(exact):d}/16")
    print(exact)
    return guess, maxs, exact


@operation_decorator("plotting data", "plot successful!")
def plot_correlations(meta, cor, key, stats, envelope, path=None):
    """Correlation data plotting

    Parameters
    ----------
    meta : log.Meta
        Meta-data
    cor : np.ndarray
        Temporal correlations
    key : np.ndarray
        Key block to guess
    stats : tuple[np.ndarray, np.ndarray, np.ndarray]
        - Guessed key
        - Maximum temporal correlations
        - Exact guesses matrix
    envelope : tuple[np.ndarray, np.ndarray]
        Guess envelope
    path : str
        Path where to save plots

    See Also
    --------
    cpa.guess_envelope : compute guess envelope
    cpa.guess_stats : compute guess statistics

    """
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
            path, f"sca_cor_{meta.mode}_{meta.iterations}_b{b}")
        def plot_guess():
            if key[i, j] != guess[i, j]:
                plt.plot(cor[i, j, key[i, j]], color="b", label=f"key 0x{key[i, j]:02x}")
                plt.plot(cor[i, j, guess[i, j]], color="c", label=f"guess 0x{guess[i, j]:02x}")
            else:
                plt.plot(cor[i, j, key[i, j]], color="r", label=f"key 0x{key[i, j]:02x}")

        plot_guess()


def create_subdir(path=None):
    """Creates a sub dir without failing

    Parameters
    ----------
    path : str
        Path where to create sub-dirs

    """
    if path:
        try_create_dir(path)
    for mode in MODES:
        try_create_dir(os.path.join(path, mode))


@operation_decorator("removing logs", "remove success!")
def remove_logs():
    """Remove all the log files, CSV and binary

    """
    remove_subdir_files(DATA_PATH_ACQ)


@operation_decorator("removing acquisition images", "remove success!")
def remove_acquisition_images():
    """Remove all the acquisition images

    """
    remove_subdir_files(IMG_PATH_ACQ)


@operation_decorator("removing correlation images", "remove success!")
def remove_correlation_images():
    """Remove all the correlations images

    """
    remove_subdir_files(IMG_PATH_COR)


@operation_decorator("creating log dirs", "create success!")
def create_logs_dir():
    """Wrapper for data directories creation

    """
    try_create_dir(DATA_PATH)
    create_subdir(DATA_PATH_ACQ)
    create_subdir(DATA_PATH_COR)


@operation_decorator("creating images dirs", "create success!")
def create_images_dir():
    """Wrapper for images directories creation

    """
    try_create_dir(MEDIA_PATH)
    try_create_dir(IMG_PATH)
    create_subdir(IMG_PATH_ACQ)
    create_subdir(IMG_PATH_COR)
