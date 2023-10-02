"""
Your classmates asked you to copy some paperwork for them. You know that there are 'n' classmates and the paperwork has 'm' pages.

Your task is to calculate how many blank pages do you need. If n < 0 or m < 0 return 0.
Example:

n = 5, m = 5: 25
n =-5, m = 5:  0
"""

fn paperwork(n:Int, m:Int) -> Int:
    return n * m if n > 0 and m > 0 else 0

fn main() raises:
    print(paperwork(-1, 6), paperwork(6, -1), paperwork(4, 4))