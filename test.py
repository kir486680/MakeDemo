import numpy as np
import main

#Test the functions in main.py with sample inputs

def test_multiply():
    a = np.array([1, 2, 3])
    b = np.array([4, 5, 6])
    expected = np.array([4, 10, 18])
    result = main.multiply(a, b)
    assert np.array_equal(result, expected), "The multiply function failed!"

def test_add():
    a = np.array([1, 2, 3])
    b = np.array([4, 5, 6])
    expected = np.array([5, 7, 9])
    result = main.add(a, b)
    assert np.array_equal(result, expected), "The add function failed!"
