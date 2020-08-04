import numpy as np
from scipy import stats


def crop(traces, end=None):
    n_min = min(map(len, traces))
    n = min(end or n_min, n_min)
    return np.array(list(trace[:n]
                         for trace in traces))


def pad(traces, fill=0, end=None):
    lens = list(map(len, traces))
    n_max = max(lens)
    n = max(end or n_max, n_max)
    return np.array(list(np.concatenate((trace, [fill] * (n - lens[k])))
                         for k, trace in enumerate(traces)))


def sync(traces, step=1, stop=None):
    ref = traces[0]
    n = len(traces)
    m = len(ref)
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
