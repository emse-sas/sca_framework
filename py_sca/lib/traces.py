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
    stop = min(stop or m, m)
    for i in range(n):
        buffer = np.fromiter(map(
            lambda shift: stats.pearsonr(ref[:stop], np.roll(traces[i][:stop], shift))[0], list(range(-m, m, step))),
            dtype=np.float)
        traces[i] = np.roll(traces[i], np.argmax(buffer) - m)

    return traces

def stride(t, n):
    strides = t.strides * 2
    return np.lib.stride_tricks.as_strided(t, (n, n), strides)
