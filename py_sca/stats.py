import numpy as np
import scipy.signal as signal


def sliding_average(trace, samples):
    return np.convolve(trace, np.ones((samples,)) / samples, mode='same')


# noinspection PyTupleAssignmentBalance,PyTypeChecker
def bandpass_filtering(trace, f_sampling):
    f_pass = (30e6, 50e6)
    f_stop = (25e6, 55e6)
    g_pass = 3.
    g_stop = 6.

    order, f_cutoff = signal.buttord(f_pass, f_stop, g_pass, g_stop, fs=f_sampling)
    b, a = signal.butter(order, f_cutoff, btype="bandpass", fs=f_sampling)

    return signal.filtfilt(b, a, trace)


# noinspection PyTupleAssignmentBalance,PyTypeChecker
def bandpass_filtering_2(trace, f_sampling):
    f_pass = (1e4, 1e6)
    f_stop = (0.5e4, 10e6)
    g_pass = 3.
    g_stop = 10.

    order, f_cutoff = signal.buttord(f_pass, f_stop, g_pass, g_stop, fs=f_sampling)
    b, a = signal.butter(order, f_cutoff, btype="bandpass", fs=f_sampling)

    return signal.filtfilt(b, a, trace)
