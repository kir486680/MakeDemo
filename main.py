import numpy as np

def multiply(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    return a * b

def add(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    return a +b

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])
print(multiply(a,b))
print(add(a,b))