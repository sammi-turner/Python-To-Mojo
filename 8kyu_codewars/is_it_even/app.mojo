"""
In this Kata we are passing a number (n) into a function.

Your code will determine if the number passed is even (or not).

The function needs to return either a true or false.

Numbers may be positive or negative, integers or floats.

Floats with decimal part non equal to zero are considered not even for this kata.
"""

fn is_even(n:FloatLiteral) -> Bool: 
    return n % 2 == 0

fn main() raises:
    print(is_even(0), is_even(0.5), is_even(2), is_even(3), is_even(-4))