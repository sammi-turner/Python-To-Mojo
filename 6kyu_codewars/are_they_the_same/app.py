"""
Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). 

"Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Examples :

Arrays that return true.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]

comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares.

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

def comp(array1, array2):
    if None in [array1, array2] or len(array1) != len(array2):
        return False
    for number in array1:
        try:
            array2.remove(number*number)
        except ValueError:
            return False
    return True

a0 = [121, 144, 19, 161, 19, 144, 19, 11]  
b0 = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
a1 = [121, 144, 19, 161, 19, 144, 19, 11]  
b1 = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
a2 = [121, 144, 19, 161, 19, 144, 19, 11]  
b2 = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]

print(comp(a0, b0), comp(a1, b1), comp(a2, b2))