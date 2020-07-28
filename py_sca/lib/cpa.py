from lib import aes, traces as tr
import concurrent.futures
import numpy as np
from scipy import stats
import threading


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
        sort = [[{} for j in range(aes.BLOCK_LEN)] for i in range(aes.BLOCK_LEN)]
        log_blocks = log.plains if log.direction == "encrypt" else log.ciphers
        n = log.samples
        blocks = np.empty((n, aes.BLOCK_LEN, aes.BLOCK_LEN), dtype=np.ubyte)
        for d in range(n):
            blocks[d] = aes.words_to_block(log_blocks[d])
            for i in range(aes.BLOCK_LEN):
                for j in range(aes.BLOCK_LEN):
                    try:
                        sort[i][j][blocks[d, i, j]].append(traces[d])
                    except KeyError:
                        sort[i][j][blocks[d, i, j]] = [traces[d]]
 
        m = len(traces[0])
        lens = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS), dtype=np.int)
        means = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m), dtype=np.float64)
        devs = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m), dtype=np.float64) 
        for i in range(aes.BLOCK_LEN):
            for j in range(aes.BLOCK_LEN):
                for k in sort[i][j].keys():
                    lens[i, j, k] = len(sort[i][j][k])
                    means[i, j, k] = np.mean(sort[i][j][k], axis=0)
                    devs[i, j, k] = np.std(sort[i][j][k], axis=0)

        mean = np.mean(traces, axis=0)
        dev = np.std(traces, axis=0)
        return Handler(blocks, aes.words_to_block(log.keys[0]), lens, mean, means, dev, devs)

    def init_model(self):
        for h in range(COUNT_HYP):
            for k in range(COUNT_CLS):
                self.hyp[h, k] = bin(aes.S_BOX[k ^ h] ^ k).count("1")

    def correlations(self):
        m = len(self.means[0, 0, 0])
        ret = np.empty((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_HYP, m), dtype=np.float64)

        for i in range(aes.BLOCK_LEN):
            for j in range(aes.BLOCK_LEN):
                self._pearson_fast(i, j, m, ret)

        return ret

    def _pearson(self, i, j, m, ret):
        means = self.means[i, j].T
        for h in range(COUNT_HYP):
            for t in range(m):
                ret[i, j, h, t] = stats.pearsonr(self.hyp[h], means[t])[0]

    def _pearson_fast(self, i, j, m, ret):
        for h in range(COUNT_HYP):
            y_mean = np.average(self.hyp[h], weights=self.lens[i, j])
            y_std = np.sqrt(np.average(self.hyp[h] * self.hyp[h], weights=self.lens[i, j]) - y_mean * y_mean)
            xy = np.average(self.hyp[h].reshape((COUNT_HYP, 1)) * self.means[i, j], weights=self.lens[i, j], axis=0)
            ret[i, j, h] = ((xy - self.mean * y_mean) / self.dev) / y_std