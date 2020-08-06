import numpy as np
from scipy import stats


def crop(traces, end=None):
    m = min(map(len, traces))
    m = min(end or m, m)
    return [trace[:m] for trace in traces]


def pad(traces, fill=0, end=None):
    samples = list(map(len, traces))
    m = max(samples)
    m = max(end or m, m)
    return [trace + [fill] * (m - read) for trace, read in zip(traces, samples)]


def sync(traces, step=1, stop=None):
    ref = traces[0]
    n, m = traces.shape
    strides_pos = ref.strides * 2
    strides_neg = (-strides_pos[0], strides_pos[1])
    shape = (m, m)
    stop = min(stop or m, m)
    shifts = list(range(0, stop, step))

    for trace in traces:
        strided = np.lib.stride_tricks.as_strided(trace, shape, strides_pos)
        buffer = list(map(lambda shift: stats.pearsonr(ref, strided[shift])[0], shifts))
        argmax_pos = np.int(np.argmax(buffer))
        max_pos = buffer[argmax_pos]
        strided = np.lib.stride_tricks.as_strided(trace, shape, strides_neg)
        buffer = list(map(lambda shift: stats.pearsonr(ref, strided[shift])[0], shifts))
        argmax_neg = np.int(np.argmax(buffer))
        max_neg = buffer[argmax_neg]
        if max_neg < max_pos:
            trace[:] = np.roll(trace, -shifts[argmax_pos])
        else:
            trace[:] = np.roll(trace, shifts[argmax_neg])

    trace = traces[n - 1]
    shifts = list(range(-stop, stop, step))
    buffer = list(map(lambda shift: stats.pearsonr(ref, np.roll(trace, shift))[0], shifts))
    trace[:] = np.roll(trace, np.argmax(buffer) - stop)

    return traces
