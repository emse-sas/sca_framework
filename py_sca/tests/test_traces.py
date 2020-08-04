import unittest
import numpy as np
from lib import traces as tr


class TracesTest(unittest.TestCase):
    x0 = np.sin(np.linspace(0, 2 * np.pi, 256))
    x1 = np.cos(np.linspace(0, 2 * np.pi, 256))
    x2 = np.sin(np.linspace(np.pi / 4, 2 * np.pi + np.pi / 2, 320))

    def test_crop(self):
        traces = tr.crop([self.x0, self.x2])
        self.assertEqual(traces.shape, (2, 256))
        self.assertEqual(traces.dtype, np.float64)

    def test_pad(self):
        traces = tr.pad([self.x0, self.x2])
        self.assertEqual(traces.shape, (2, 320))
        self.assertEqual(traces.dtype, np.float64)

    def test_sync(self):
        traces = tr.sync(np.array([self.x0, self.x1]))
        self.assertAlmostEqual(np.linalg.norm(traces[0] - traces[1]), 0, delta=0.15)
