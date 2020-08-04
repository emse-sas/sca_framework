from lib import aes
import numpy as np
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
        self.hyp = np.zeros((COUNT_HYP, COUNT_CLS), dtype=np.uint8)
        self.init_model()

    @classmethod
    def from_log(cls, log, traces):
        n, m = traces.shape

        key = aes.words_to_block(log.keys[0])
        blocks = np.empty((n, aes.BLOCK_LEN, aes.BLOCK_LEN), dtype=np.uint8)
        for block, plain in zip(blocks, log.plains):
            block[:] = aes.words_to_block(plain)

        shape = (aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m)
        lens = np.zeros(shape[:-1], dtype=np.int)
        means = np.zeros(shape)
        devs = np.zeros(shape)
        bt = zip(blocks, traces)
        for i, j, (block, trace) in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), bt):
            k = block[i, j]
            lens[i, j, k] += 1
            means[i, j, k] += trace
            devs[i, j, k] += np.square(trace)

        for i, j, k in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_CLS)):
            if lens[i, j, k] == 0:
                continue
            means[i, j, k] /= lens[i, j, k]
            devs[i, j, k] /= lens[i, j, k]
            devs[i, j, k] -= np.square(means[i, j, k])
            devs[i, j, k] = np.sqrt(devs[i, j, k])

        mean = np.zeros(m)
        dev = np.zeros(m)
        for trace in traces:
            mean += trace
            dev += trace * trace

        mean /= n
        dev /= n
        dev -= np.square(mean)
        dev = np.sqrt(dev)
        return Handler(blocks, key, lens, mean, means, dev, devs)

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
        maxs = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_HYP))
        for i, j, h in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_HYP)):
            maxs[i, j, h] = np.max(cor[i, j, h])

        guess = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN), dtype=np.uint8)
        for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
            guess[i, j] = np.argmax(maxs[i, j])

        return guess, maxs

    def guess_envelope(self, cor):
        _, _, _, m = self.means.shape
        cor_max = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        cor_min = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        for i, j, t in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(m)):
            cor_max[i, j, t] = np.max(cor[i, j, :, t])
            cor_min[i, j, t] = np.min(cor[i, j, :, t])

        return cor_max, cor_min
