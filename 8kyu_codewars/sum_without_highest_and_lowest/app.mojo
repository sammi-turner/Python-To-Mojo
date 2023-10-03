"""
Sum all the numbers of a given array (list), except the highest and the lowest element (by value, not by index).

The highest or lowest element respectively is a single element at each edge, even if there are more than one with the same value.

Mind the input validation.

Examples :

[6, 2, 1, 8, 10] => 16
[1, 1, 11, 2, 3] => 6

Input validation :

If an empty value (None) is given instead of an array, or the given array is an empty list or a list with only 1 element, return 0.
"""

from python import Python

fn sum_array(arr:PythonObject) raises -> PythonObject:
    let py = Python.import_module('builtins')
    if py.len(arr) > 2:
        return py.sum(arr) - py.max(arr) - py.min(arr)
    else:
        return 0

fn main() raises:
    let value0 = sum_array([6, 2, 1, 8, 10])
    let value1 = sum_array([1, 1, 11, 2, 3])
    print(value0, value1)