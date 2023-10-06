"""
Two red beads are placed between every two blue beads. There are N blue beads. After looking at the arrangement below work out the number of red beads.

B RR B RR B RR B RR B RR B 
"""

def count_red_beads(n:int) -> int:
    if n < 2:
        return 0
    return (n - 1) * 2

print(count_red_beads(1), count_red_beads(2), count_red_beads(3), count_red_beads(4))