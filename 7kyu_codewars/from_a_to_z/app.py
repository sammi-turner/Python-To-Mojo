"""
Given a string indicating a range of letters, return a string which includes all the letters in that range, including the last letter. Note that if the range is given in capital letters, return the string in capitals also!

Examples :

"a-z" -> "abcdefghijklmnopqrstuvwxyz"
"h-o" -> "hijklmno"
"Q-Z" -> "QRSTUVWXYZ"
"J-J" -> "J"

Notes :

- a hyphen will separate the two letters in the string.
- you don't need to worry about error handling in this one as both letters will be the same case and the second letter will always be after the first alphabetically.
"""

def gimme_the_letters(sp:str) -> str:
    result = ""
    start = ord(sp[0])
    finish = ord(sp[2]) + 1
    for i in range (start, finish):
        result += chr(i)
    return result

print(gimme_the_letters("a-z"))
print(gimme_the_letters("h-o"))
print(gimme_the_letters("Q-Z"))
print(gimme_the_letters("J-J"))
