"""
Traditional safes use a three-wheel locking mechanism, with the safe combination entered using a dial on the door of the safe. 

The dial is marked with clockwise increments between 0 and 99. 

The three-number combination is entered by first dialling to the right (clockwise), then to the left (anti-clockwise), and then to the right (clockwise) again. Combination numbers are read from the top of the dial.

Given the starting (top) position of the dial and the increments used for each turn of the dial, return a tuple containing the combination of the safe.

Worked example:

0, (3, 10, 5)

Starting dial position of 0 (same as the diagram above).

First turn (rightward) of 3 increments:
0 -> 99, 98, 97
First number of combination = 97

Second turn (leftward) of 10 increments:
97 -> 98, 99, 0, 1, 2, 3, 4, 5, 6, 7
Second number of combination = 7

Third turn (rightward) of 5 increments:
7 -> 6, 5, 4, 3, 2
Third number of combination = 2

The final combination is (97, 7, 2)

More examples:

(96, (54, 48, 77)) -> (42, 90, 13)

(43, (51, 38, 46)) -> (92, 30, 84)

(4, (69, 88, 55)) -> (35, 23, 68)

Notes :

- two consecutive numbers will equal
- values greater than 100 may be provided
"""

struct Triple:
    var t0: Int
    var t1: Int
    var t2: Int

    fn __init__(inout self, t0: Int, t1: Int, t2: Int):
        self.t0 = t0
        self.t1 = t1
        self.t2 = t2
    
fn show_triple(s:Triple):
    print(s.t0, s.t1, s.t2)

fn safecracker(start:Int, incs:Triple) -> Triple:
    let r0 = (start - incs.t0) % 100
    let r1 = (r0 + incs.t1) % 100
    let r2 = (r1 - incs.t2) % 100
    return Triple(r0, r1, r2)

fn main() raises:
    let test0 = safecracker(96, Triple(54, 48, 77))
    let test1 = safecracker(43, Triple(51, 38, 46))
    let test2 = safecracker(4, Triple(69, 88, 55))
    show_triple(test0)
    show_triple(test1)
    show_triple(test2)
