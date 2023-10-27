"""
We need the ability to divide an unknown integer into a given number of even parts - or at least as even as they can be. 

The sum of the parts should be the original value, but each part should be an integer, and they should be as close as possible.

Complete the function so that it returns an array of integers representing the parts. 

If the input number is too small to split it into requested amount of parts, the additional parts should have value 0. 

Ignoring the order of the parts, there is only one valid solution for each input to your function!

Example:

split_integer(20, 6) => [3, 3, 3, 3, 4, 4]
"""

def split_integer(num, parts):
    result = [num // parts for _ in range(parts)]
    remainder = num % parts
    for i in reversed(range(parts - remainder, parts)):
        result[i] += 1
    return result

print(split_integer(20, 6))
