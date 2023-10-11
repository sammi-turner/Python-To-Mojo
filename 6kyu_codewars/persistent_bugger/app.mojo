"""
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence, which is the number of times you must multiply the digits in num until you reach a single digit.

Examples :

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)
"""

from python import Python

fn persistence(num:PythonObject) raises -> Int:
    let py = Python.import_module('builtins')
    var count = 0
    var n = num
    var product:PythonObject = 0
    while n >= 10:
        product = 1
        var s = py.str(n)
        for digit in s:
            product *= py.int(digit)
        n = product
        count += 1
    return count

fn main() raises:
    print(persistence(39), persistence(999), persistence(4))