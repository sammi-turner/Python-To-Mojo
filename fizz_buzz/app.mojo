fn fizz_buzz(n:Int):
    let j = n + 1
    for i in range(1, j):
        if i % 3 == 0 and i % 5 == 0:
            print("FizzBuzz")
        elif i % 3 == 0:
            print("Fizz")
        elif i % 5 == 0:
            print("Buzz")
        else:
            print(i)

fn main():
    fizz_buzz(100)