"""
Write a function, nickname_generator that takes a string name as an argument and returns the first 3 or 4 letters as a nickname.

If the 3rd letter is a consonant, return the first 3 letters.

nickname("Robert") -> "Rob"
nickname("Kimberly") -> "Kim"
nickname("Samantha") -> "Sam"

If the 3rd letter is a vowel, return the first 4 letters.

nickname("Jeannie") -> "Jean"
nickname("Douglas") -> "Doug"
nickname("Gregory") -> "Greg"

If the string is less than 4 characters, return "Error: Name too short".

Notes:

- vowels are "aeiou", so discount the letter "y".
- input will always be a string.
- input will always have the first letter capitalised and the rest lowercase (e.g. Sam).
- the input can be modified
"""

def is_vowel(v:str) -> bool:
    return v[0] == 'a' or v[0] == 'e' or v[0] == 'i' or v[0] == 'o' or v[0] == 'u'

def nickname_generator(name:str) -> str:
    size = len(name)
    if size < 4:
        return "Error: Name too short"
    if is_vowel(name[2]):
        return name[:4]
    return name[:3]

print(nickname_generator('Robert'))
print(nickname_generator('Kimberly'))   
print(nickname_generator('Samantha'))
print(nickname_generator('Tim'))