"""
Sum all the numbers of a given array (list), except the highest and the lowest element (by value, not by index).

The highest or lowest element respectively is a single element at each edge, even if there are more than one with the same value.

Mind the input validation.

Example :

[6, 2, 1, 8, 10] => 16
[1, 1, 11, 2, 3] => 6

Input validation :

If an empty value (None) is given instead of an array, or the given array is an empty list or a list with only 1 element, return 0.
"""

def sum_array(arr):
    if len(arr) > 2:
        return sum(arr) - max(arr) - min(arr)
    else:
        return 0

value0 = sum_array([6, 2, 1, 8, 10])
value1 = sum_array([1, 1, 11, 2, 3])
print(value0, value1)