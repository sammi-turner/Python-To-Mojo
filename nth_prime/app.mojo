from python import Python

fn is_prime(n:Int) raises -> Bool:
    let py = Python.import_module('builtins')
    if n <= 1:
        return False
    for i in range(2, py.int(n ** 0.5) + 1):
        if n % i == 0:
            return False
    return True

fn nth_prime(n:Int) raises -> Int:
    var count = 0
    var num = 1
    while count < n:
        num += 1
        if is_prime(num):
            count += 1
    return num

fn main() raises:
    print(nth_prime(10), nth_prime(11))