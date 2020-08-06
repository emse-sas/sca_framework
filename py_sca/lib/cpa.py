from lib import aes
import numpy as np
from itertools import product

COUNT_HYP = 256
COUNT_CLS = 256


class Handler:
    def __init__(self, blocks, key, traces):
        n, m = traces.shape
        self.blocks = blocks
        self.key = key
        self.hyp = np.empty((COUNT_HYP, COUNT_CLS), dtype=np.uint8)
        self.lens = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS), dtype=np.int)
        self.means = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m))
        self.devs = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m))
        self.mean = np.empty(m)
        self.dev = np.empty(m)

        self.init_model()
        self.reduce_traces(traces)

    def reduce_traces(self, traces):
        n, m = traces.shape
        self.lens.fill(0)
        self.means.fill(0)
        self.devs.fill(0)

        bt = zip(self.blocks, traces)
        for i, j, (block, trace) in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), bt):
            k = block[i, j]
            self.lens[i, j, k] += 1
            self.means[i, j, k] += trace
            self.devs[i, j, k] += np.square(trace)

        for i, j, k in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_CLS)):
            if self.lens[i, j, k] == 0:
                continue
            self.means[i, j, k] /= self.lens[i, j, k]
            self.devs[i, j, k] /= self.lens[i, j, k]
            self.devs[i, j, k] -= np.square(self.means[i, j, k])
            self.devs[i, j, k] = np.sqrt(self.devs[i, j, k])

        self.mean = np.sum(traces, axis=0) / n
        self.dev = np.sum(traces * traces, axis=0) / n
        self.dev -= np.square(self.mean)
        self.dev = np.sqrt(self.dev)

    def init_model(self):
        for h, k in product(range(COUNT_HYP), range(COUNT_CLS)):
            self.hyp[h, k] = bin(aes.S_BOX[k ^ h] ^ k).count("1")

    def correlations(self):
        n = len(self.blocks)
        m = len(self.means[0, 0, 0])
        ret = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_HYP, m))
        for i, j, h in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_HYP)):
            y = np.array(self.hyp[h] * self.lens[i, j], dtype=np.float)
            y_mean = np.sum(y) / n
            y_std = np.sqrt(np.sum(self.hyp[h] * y) / n - y_mean * y_mean)
            xy = np.sum(y.reshape((COUNT_HYP, 1)) * self.means[i, j], axis=0) / n
            ret[i, j, h] = ((xy - self.mean * y_mean) / self.dev) / y_std
            ret[i, j, h] = np.nan_to_num(ret[i, j, h])

        return ret

    def guess_stats(self, cor):
        _, _, _, m = self.means.shape
        maxs = np.max(np.abs(cor), axis=3)
        guess = np.argmax(maxs, axis=2)
        exact = guess == self.key
        return guess, maxs, exact

    def guess_envelope(self, cor):
        _, _, _, m = self.means.shape
        cor_max = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        cor_min = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        for i, j, t in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(m)):
            cor_max[i, j, t] = np.max(cor[i, j, :, t])
            cor_min[i, j, t] = np.min(cor[i, j, :, t])

        return cor_max, cor_min
