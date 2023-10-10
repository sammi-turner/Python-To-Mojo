"""
The strongness of an even number (n) is the number of times we can successively divide by 2 until we reach an odd number.

For example, if n = 12, then

12 / 2 = 6
6 / 2 = 3

So we divided successively 2 times and we reached 3, so the strongness of 12 is 2.

If n = 16 then

16 / 2 = 8
8 / 2 = 4
4 / 2 = 2
2 / 2 = 1

we divided successively 4 times and we reached 1, so the strongness of 16 is 4.

Task :

Given a closed interval [n, m], return the even number that is the strongest in the interval. 

If multiple solutions exist return the smallest strongest even number.

Constraints :

- the program must run within the allotted server time (a naive solution will probably time out).
- 0 < n < m

Examples :

[1, 2]    ->   2
[5, 10]   ->   8
[48, 56]  ->  48
"""

def strongest_even(n, m):
    while m & m - 1 >= n:
        m &= m - 1
    return m

print(strongest_even(1, 2), strongest_even(5, 10), strongest_even(48, 56))