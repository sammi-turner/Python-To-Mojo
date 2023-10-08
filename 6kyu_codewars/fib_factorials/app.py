"""
Task:

Write a function that accepts an integer n and returns the sum of the factorials of the first n Fibonacci numbers, where n < 23.

Examples:

sum_fib(2)  = 2    # 0! + 1! = 2
sum_fib(3)  = 3    # 0! + 1! + 1! = 3
sum_fib(4)  = 5    # 0! + 1! + 1! + 2! = 5
sum_fib(10) = 295232799039604140898709551821456501251
"""

import math

def sum_fib(n):
    if n == 0:
        return 0
    if n == 1:
        return 1

    fib_a = 0
    fib_b = 1
    sum_factorials = math.factorial(fib_a) + math.factorial(fib_b)

    for i in range(2, n):
        fib_c = fib_a + fib_b
        sum_factorials += math.factorial(fib_c)
        fib_a = fib_b
        fib_b = fib_c

    return sum_factorials

print(sum_fib(2))
print(sum_fib(3))
print(sum_fib(4))
print(sum_fib(10))