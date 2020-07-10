import numpy as np


def sliding_average(trace, samples):
    return np.convolve(trace, np.ones((samples,)) / samples, mode='valid')
