import unittest
import numpy as np
from lib import logger, aes
import os


def check_same_len(test_case, log, tol=None):
    n_t = len(log.traces)
    test_case.assertEqual(n_t, len(log.keys))
    test_case.assertEqual(n_t, len(log.ciphers))
    test_case.assertEqual(n_t, len(log.plains))
    test_case.assertEqual(n_t, len(log.traces))
    if not tol:
        test_case.assertEqual(n_t, test_case.n)
        return
    test_case.assertLessEqual(n_t, test_case.n)
    test_case.assertGreaterEqual(n_t, tol * test_case.n)


def check_values(test_case, log):
    plain = aes.words_to_block(log.plains[0])
    cipher = aes.words_to_block(log.ciphers[0])
    key = aes.words_to_block(log.keys[0])
    handler = aes.Handler(key)
    test_case.assertEqual(np.linalg.norm(handler.encrypt(plain) - cipher), 0)


class LogTest(unittest.TestCase):
    n = 32
    mode = "hw"
    path = os.path.join("..", *["..", "data", "tests"])
    data_path = os.path.join(path, "report_data_%s_%d.csv" % (mode, n))
    traces_path = os.path.join(path, "report_traces_%s_%d.csv" % (mode, n))
    cmd_path = os.path.join(path, "cmd_%s_%d.log" % (mode, n))

    def test_from_reports(self):
        log = logger.Log.from_reports(self.data_path, self.traces_path)
        check_same_len(self, log)
        check_values(self, log)

    def test_from_file(self):
        log = logger.Log.from_file(self.cmd_path)
        check_same_len(self, log, tol=0.6)
        check_values(self, log)
