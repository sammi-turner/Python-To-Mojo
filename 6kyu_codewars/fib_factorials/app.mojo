"""
Task:

Write a function that accepts an integer n and returns the sum of the factorials of the first n Fibonacci numbers, where n < 23.

Examples:

sum_fib(2)  = 2
sum_fib(3)  = 3
sum_fib(4)  = 5
sum_fib(10) = 295232799039604140898709551821456501251
"""

fn factorial(n:PythonObject) raises -> PythonObject:
    if n == 0:
        return 1
    return n * factorial(n - 1)
    
fn sum_fib(n:PythonObject) raises -> PythonObject:
    if n == 0:
        return 0
    if n == 1:
        return 1

    var fib_a:PythonObject = 0
    var fib_b:PythonObject = 1
    var sum_factorials:PythonObject = factorial(fib_a) + factorial(fib_b)

    for i in range(2, n):
        let fib_c:PythonObject = fib_a + fib_b
        sum_factorials += factorial(fib_c)
        fib_a = fib_b
        fib_b = fib_c

    return sum_factorials

fn main() raises:
    print(sum_fib(2))
    print(sum_fib(3))
    print(sum_fib(4))
    print(sum_fib(10))