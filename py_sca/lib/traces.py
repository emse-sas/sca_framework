import numpy as np
from scipy import stats

def _matrix(traces):
    n = len(traces)
    m = len(traces[0])
    ret = np.empty((n, m), dtype=np.int)
    for i in range(0, n):
        for j in range(0, m):
            ret[i, j] = traces[i][j]
    return ret


def crop(traces):
    n = min(list(map(lambda trace: len(trace), traces)))
    m = 0
    for i in range(0, n):
        if len(list(filter(lambda t: t[i] != traces[0][i], traces))) != 0:
            m = i
            break
    return _matrix(list(map(lambda t: t[m:n], traces)))


def sync(traces, step=1, stop=None):
    ref = traces[0]
    n = len(traces)
    m = len(ref)
    strides_pos = ref.strides * 2
    strides_neg = (-strides_pos[0], strides_pos[1])
    shape = (m, m)
    stop = min(stop or m, m)
    shifts = list(range(0, stop, step))
    correlate = lambda trace: stats.pearsonr(ref, trace)[0]
    for i in range(1, n - 1):
        strided = np.lib.stride_tricks.as_strided(traces[i], shape, strides_pos)
        buffer = list(map(lambda shift: correlate(strided[shift]), shifts))
        argmax_pos = np.argmax(buffer)
        max_pos = buffer[argmax_pos]
        strided = np.lib.stride_tricks.as_strided(traces[i], shape, strides_neg)
        buffer = list(map(lambda shift: correlate(strided[shift]), shifts))
        argmax_neg = np.argmax(buffer)
        max_neg = buffer[argmax_neg]
        traces[i] = np.roll(traces[i], -shifts[argmax_pos] if max_neg < max_pos else shifts[argmax_neg])

    shifts = list(range(-stop, stop, step))
    buffer = list(map(lambda shift: correlate(np.roll(traces[n - 1], shift)), shifts))
    traces[n - 1] = np.roll(traces[n - 1], np.argmax(buffer) - stop)

    return traces