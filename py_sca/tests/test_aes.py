import unittest
import numpy as np
from ..lib import aes


class HandlerTest(unittest.TestCase):
    def test_encrypt(self):
        block = np.array([
            [0x00, 0x11, 0x22, 0x33],
            [0x44, 0x55, 0x66, 0x77],
            [0x88, 0x99, 0xaa, 0xbb],
            [0xcc, 0xdd, 0xee, 0xff]
        ], dtype=np.ubyte).T

        key = np.array([
            [0x00, 0x01, 0x02, 0x03],
            [0x04, 0x05, 0x06, 0x07],
            [0x08, 0x09, 0x0a, 0x0b],
            [0x0c, 0x0d, 0x0e, 0x0f]
        ], dtype=np.ubyte)

        cipher = np.array([
            [0x69, 0x6a, 0xd8, 0x70],
            [0xc4, 0x7b, 0xcd, 0xb4],
            [0xe0, 0x04, 0xb7, 0xc5],
            [0xd8, 0x30, 0x80, 0x5a]
        ], dtype=np.ubyte)

        np.set_printoptions(formatter={'int': hex})
        handler = aes.Handler(key)
        print("*** plain ***")
        print(block)
        print("*** key ***")
        print(key)
        print("*** cipher ***")
        print(handler.encrypt(block))
        print("*** expected cipher ***")
        print(cipher)
        self.assertEqual(np.linalg.norm(handler.encrypt(block) - cipher), 0)


if __name__ == '__main__':
    unittest.main()
