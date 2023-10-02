"""
Write a function that removes the spaces from a string, and returns the result.

Examples:

"Oh, hi Mark!" -> "Oh,hi,Mark!"
"420   69" -> "42069"
"""

def no_space(x):
    return x.replace(' ' ,'')

print(no_space("Oh, hi Mark!"))
print(no_space("420   69"))
