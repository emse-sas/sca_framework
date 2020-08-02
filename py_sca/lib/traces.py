import numpy as np
from scipy import stats


def crop(traces):
    n = min(map(lambda trace: len(trace), traces))
    return np.array(list(trace[:n] for trace in traces))


def pad(traces, pad=0):
    lens = list(map(lambda trace: len(trace), traces))
    n = max(lens)
    return np.array(list(np.concatenate((trace, [pad] * (n - lens[k]))) for k, trace in enumerate(traces)))


def sync(traces, step=1, stop=None):
    ref = traces[0]
    n = len(traces)
    m = len(ref)
    strides_pos = ref.strides * 2
    strides_neg = (-strides_pos[0], strides_pos[1])
    shape = (m, m)
    stop = min(stop or m, m)
    shifts = list(range(0, stop, step))
    def correlate(trace): return stats.pearsonr(ref, trace)[0]

    for trace in traces:
        strided = np.lib.stride_tricks.as_strided(trace, shape, strides_pos)
        buffer = list(map(lambda shift: correlate(strided[shift]), shifts))
        argmax_pos = np.argmax(buffer)
        max_pos = buffer[argmax_pos]
        strided = np.lib.stride_tricks.as_strided(trace, shape, strides_neg)
        buffer = list(map(lambda shift: correlate(strided[shift]), shifts))
        argmax_neg = np.argmax(buffer)
        max_neg = buffer[argmax_neg]
        if max_neg < max_pos:
            trace[:] = np.roll(trace, -shifts[argmax_pos])
        else:
            trace[:] = np.roll(trace, shifts[argmax_neg])

    trace = traces[n - 1]
    shifts = list(range(-stop, stop, step))
    buffer = list(map(lambda shift: correlate(np.roll(trace, shift)), shifts))
    trace[:] = np.roll(trace, np.argmax(buffer) - stop)

    return traces
