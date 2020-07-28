import numpy as np
from scipy import stats


def crop(traces):
    n = min(map(lambda trace: len(trace), traces))
    m = 0
    ref = traces[0]
    for t in range(0, n):
        if len([trace[t] != ref[t] for trace in traces]) != 0:
            m = t
            break
    ret = np.zeros((len(traces), n - m), dtype=np.int)
    for dst, src in zip(ret, traces):
        dst[:] = src[m:n]

    return ret


        

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