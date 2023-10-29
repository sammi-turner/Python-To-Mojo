"""
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" 
elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). 

"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Examples :

Arrays that return true.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the 
square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares.

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]

Arrays that return false.

If, for example, we change the first number to something else, comp is not returning true anymore.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

comp(a,b) returns false because in b 36100 is not the square of any number of a.
"""

from python import Python

fn comp(array1:PythonObject, array2:PythonObject) raises -> PythonObject:
    let py = Python.import_module('builtins')
    if py.len(array1) != py.len(array2):
        return False
    var list1 = array1
    for n in list1:
        try:
            _ = array2.remove(n * n)
        except ValueError:
            return False
    return True

fn main() raises:
    let a0:PythonObject = [121, 144, 19, 161, 19, 144, 19, 11]  
    let b0:PythonObject = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
    let a1:PythonObject = [121, 144, 19, 161, 19, 144, 19, 11]  
    let b1:PythonObject = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
    let a2:PythonObject = [121, 144, 19, 161, 19, 144, 19, 11]  
    let b2:PythonObject = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
    print(comp(a0, b0), comp(a1, b1), comp(a2, b2))