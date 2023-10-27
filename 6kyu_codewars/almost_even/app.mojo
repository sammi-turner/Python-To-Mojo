"""
We need the ability to divide an unknown integer into a given number of even parts - or at least as even as they can be. 

The sum of the parts should be the original value, but each part should be an integer, and they should be as close as possible.

Complete the function so that it returns an array of integers representing the parts. 

If the input number is too small to split it into requested amount of parts, the additional parts should have value 0. Ignoring the order of the parts, there is only one valid solution for each input to your function!

Example:

split_integer(20, 6) => [3, 3, 3, 3, 4, 4]
"""

from utils.vector import DynamicVector

fn split_integer(num:Int, parts:Int) raises -> DynamicVector[Int]:
    var result = DynamicVector[Int](parts)
    let remainder:Int = num % parts
    let min:Int = num // parts
    for i in range(parts):
        if i < (parts - remainder):
            result.push_back(min)
        else:
            result.push_back(min + 1)
    return result

fn main() raises:
    let vec = split_integer(20, 6)
    for i in range(6):
        print_no_newline(vec[i], " ")
    print()