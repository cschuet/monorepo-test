import unittest
import numpy as np

class TestStringMethods(unittest.TestCase):

    def test_upper(self):
        a = np.array([2,3,4])
        self.assertEqual(a.dtype, np.dtype('int64'))

if __name__ == '__main__':
    unittest.main()