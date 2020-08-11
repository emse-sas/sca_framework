"""Model hypothesis and compute correlation

The main goal of this module is to provide classes to handle efficiently
side channel attacks via power consumption acquisition

Thus, this module features a trace accumulator to avoid storing all the
traces in memory. It also features a fast Pearson correlation algorithm
to retrieve attack results in a reasonable amount of time.

Notes
-----
- In all that follows, we name a class of trace a set of trace having
the same message byte value at given block position in message.

"""

from itertools import product

import numpy as np

from lib import aes

COUNT_HYP = 256  # Count of key hypothesis for one byte
COUNT_CLS = 256  # Traces with the same byte value in a given position


class Handler:
    """Handle traces accumulation and correlation

    Attributes
    ----------
    blocks: np.ndarray
        Encrypted data blocks for each trace
    key: np.ndarray
        Key data block for all the traces
    hyp: np.ndarray
        Value of power consumption for each hypothesis and class
    lens: np.ndarray
        Count of traces per class
    means: np.ndarray
        Average trace per class
    devs: np.ndarray
        Standard deviation trace per class
    mean: np.ndarray
        Average trace for all classes
    dev: np.ndarray
        Standard deviation trace for all classes
    """

    def __init__(self, blocks, key, traces):
        """Construct object with given traces to accumulate and data

        Parameters
        ----------
        blocks : np.ndarray
            Encrypted data blocks for each trace
        key : np.ndarray
            Key data block for all the traces
        traces : np.ndarray
            Power consumption traces
        """
        n, m = traces.shape
        self.blocks = blocks
        self.key = key
        self.hyp = np.empty((COUNT_HYP, COUNT_CLS), dtype=np.uint8)
        self.lens = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS), dtype=np.int)
        self.means = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m))
        self.devs = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, COUNT_CLS, m))
        self.mean = np.zeros(m)
        self.dev = np.zeros(m)

        self.accumulate(traces).init_model()

    def accumulate(self, traces):
        """Sort traces by class and compute class statistics

        Parameters
        ----------
        traces : np.ndarray
            Power consumption traces

        Returns
        -------
        Handler
            reference to self
        """
        n, m = traces.shape
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
        return self

    def init_model(self):
        """Initialize power consumption model

        Returns
        -------
        reference to self
        """
        for h, k in product(range(COUNT_HYP), range(COUNT_CLS)):
            self.hyp[h, k] = bin(aes.S_BOX[k ^ h] ^ k).count("1")
        return self

    def correlations(self):
        """Compute Pearson correlation with hypothesis and traces

        This method implements a fast Pearson correlation computation.

        Returns
        -------
        np.ndarray
            Temporal correlation per block position and hypothesis
        """
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
        """Compute the guessed key from correlation data

        Parameters
        ----------
        cor : np.ndarray
            Temporal correlation per block position and hypothesis

        Returns
        -------
        tuple[np.ndarray, np.ndarray, np.ndarray]
            - Guessed key block
            - Maximums of temporal correlation per hypothesis
            - True if the guess is exact for each byte position

        See Also
        --------
        correlations : compute temporal correlation
        """
        _, _, _, m = self.means.shape
        maxs = np.max(np.abs(cor), axis=3)
        guess = np.argmax(maxs, axis=2)
        exact = guess == self.key
        return guess, maxs, exact

    def guess_envelope(self, cor):
        """Compute the envelope of correlation

        The envelope consists on two curves representing
        respectively the max and min of temporal correlation
        at each instant.

        This feature is mainly useful to plot correlations curve.

        Parameters
        ----------
        cor : np.ndarray
            Temporal correlation per block position and hypothesis

        Returns
        -------
        tuple[np.ndarray, np.ndarray]
            - Curve of maximum correlation at each instant
            - Curve of minimum correlation at each instant
        """
        _, _, _, m = self.means.shape
        cor_max = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        cor_min = np.zeros((aes.BLOCK_LEN, aes.BLOCK_LEN, m))
        for i, j, t in product(range(aes.BLOCK_LEN), range(aes.BLOCK_LEN), range(m)):
            cor_max[i, j, t] = np.max(cor[i, j, :, t])
            cor_min[i, j, t] = np.min(cor[i, j, :, t])

        return cor_max, cor_min
