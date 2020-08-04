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
        shape = (aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m)
        blocks = np.empty((n, aes.BLOCK_LEN, aes.BLOCK_LEN), dtype=np.uint8)
        lens = np.zeros(shape[:-1], dtype=np.int)
        mean = np.zeros(m)
        means = np.zeros(shape)
        dev = np.zeros(m)
        devs = np.zeros(shape)

        for block, plain in zip(blocks, log.plains):
            block[:] = aes.words_to_block(plain)

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

        for trace in traces:
            mean += trace
            dev += trace * trace

        mean /= n
        dev /= n
        dev -= np.square(mean)
        dev = np.sqrt(dev)
        return Handler(blocks, aes.words_to_block(log.keys[0]), lens, mean, means, dev, devs)

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
            ret[i, j, h] = np.nan_to_num(((xy - self.mean * y_mean) / self.dev) / y_std, copy=False)

        return ret

    def guess_stats(self, cor):
        m = len(self.means[0, 0, 0])
        shape = (aes.BLOCK_LEN, aes.BLOCK_LEN, m)
        maxs = np.zeros(shape[:-1] + (COUNT_HYP,))
        guess = np.zeros(shape[:-1], dtype=np.uint8)
        cor_max = np.zeros(shape)
        cor_min = np.zeros(shape)
        cor_key = np.zeros(shape)
        for i, j, h in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(COUNT_HYP)):
            maxs[i, j, h] = np.max(cor[i, j, h])
            if h == self.key[i, j]:
                cor_key[i, j] = cor[i, j, h]

        for i, j in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN)):
            guess[i, j] = np.argmax(maxs[i, j])

        for i, j, t in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(m)):
            cor_max[i, j, t] = np.max(cor[i, j, :, t])
            cor_min[i, j, t] = np.min(cor[i, j, :, t])

        return guess, maxs, cor_key, cor_max, cor_min
