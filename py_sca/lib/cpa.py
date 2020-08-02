from lib import aes, traces as tr
import concurrent.futures
import numpy as np
from scipy import stats
import threading
from itertools import product


COUNT_HYP = 256
COUNT_CLS = 256


class Handler:
    def __init__(self, blocks, key, lens, mean, means, dev, devs):
        self.blocks = blocks
        self.key = key
        self.lens = lens
        self.mean = mean
        self.means = means
        self.dev = dev
        self.devs = devs
        self.hyp = np.zeros((COUNT_HYP, COUNT_CLS), dtype=np.ubyte)
        self.init_model()

    @classmethod
    def from_log(cls, log, traces):
        sort = [[{} for j in range(aes.BLOCK_LEN)]
                for i in range(aes.BLOCK_LEN)]
        log_blocks = log.plains if log.direction == "encrypt" else log.ciphers
        n = log.samples
        blocks = np.empty((n, aes.BLOCK_LEN, aes.BLOCK_LEN), dtype=np.ubyte)
        for d in range(n):
            blocks[d] = aes.words_to_block(log_blocks[d])
            for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
                try:
                    sort[i][j][blocks[d, i, j]].append(traces[d])
                except KeyError:
                    sort[i][j][blocks[d, i, j]] = [traces[d]]

        m = len(traces[0])
        shape = (aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m)
        lens = np.zeros(shape[:-1], dtype=np.int)
        means = np.zeros(shape, dtype=np.float64)
        devs = np.zeros(shape, dtype=np.float64)
        for i, j, k in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_CLS)):
            try:
                lens[i, j, k] = len(sort[i][j][k])
            except KeyError:
                continue
            means[i, j, k] = np.mean(sort[i][j][k], axis=0)
            devs[i, j, k] = np.std(sort[i][j][k], axis=0)

        mean = np.mean(traces, axis=0)
        dev = np.std(traces, axis=0)
        return Handler(blocks, aes.words_to_block(log.keys[0]), lens, mean, means, dev, devs)

    def init_model(self):
        for h, k in product(range(COUNT_HYP), range(COUNT_CLS)):
            self.hyp[h, k] = bin(aes.S_BOX[k ^ h] ^ k).count("1")

    def correlations(self):
        m = len(self.means[0, 0, 0])
        ret = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN,
                        COUNT_HYP, m), dtype=np.float64)

        for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
            self._pearson_fast(i, j, m, ret)

        return ret

    def guess_stats(self, correlations):
        m = len(self.means[0, 0, 0])
        shape = (aes.BLOCK_LEN, aes.BLOCK_LEN, m)
        maxs = np.zeros(shape[:-1] + (COUNT_HYP,))
        guess = np.zeros(shape[:-1], dtype=np.ubyte)
        cor_max = np.zeros(shape)
        cor_min = np.zeros(shape)
        cor_key = np.zeros(shape)
        for i, j, h in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_HYP)):
            maxs[i, j, h] = np.max(correlations[i, j, h])
            if h == self.key[i, j]:
                cor_key[i, j] = correlations[i, j, h]

        for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
            guess[i, j] = np.argmax(maxs[i, j])

        for i, j, t in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(m)):
            cor_max[i, j, t] = np.max(correlations[i, j, :, t])
            cor_min[i, j, t] = np.min(correlations[i, j, :, t])

        return guess, maxs, cor_key, cor_max, cor_min

    def _pearson(self, i, j, m, ret):
        means = self.means[i, j].T
        for h, t in product(range(COUNT_HYP), range(m)):
            ret[i, j, h, t] = stats.pearsonr(self.hyp[h], means[t])[0]

    def _pearson_fast(self, i, j, m, ret):
        for h in range(COUNT_HYP):
            y_mean = np.average(self.hyp[h], weights=self.lens[i, j])
            y_std = np.sqrt(np.average(self.hyp[h] * self.hyp[h], weights=self.lens[i, j]) - y_mean * y_mean)
            xy = np.average(self.hyp[h].reshape((COUNT_HYP, 1)) * self.means[i, j], weights=self.lens[i, j], axis=0)
            ret[i, j, h] = ((xy - self.mean * y_mean) / self.dev) / y_std
