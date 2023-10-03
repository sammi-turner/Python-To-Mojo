"""
A hero is on his way to the castle to complete his mission. 

However, he's been told that the castle is surrounded with a couple of powerful dragons! 

Each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.

Assuming he's going to grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive?

Return true if yes, or false otherwise.

Examples :

(10, 5) -> true
(7, 4) -> false
(4, 5) -> false
"""

def hero(bullets:int, dragons:int) -> bool:
    return bullets >= (dragons * 2)

print(hero(10, 5), hero(7, 4), hero(4, 5))