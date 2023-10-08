"""
Problem :

You wrote all your unit test names in camelCase. 

But some of your colleagues have troubles reading these long test names. 

So you make a compromise to switch to snake_case.

Task :

Implement the to_underscore() method such that 

- existing underscores are preserved
- every string of digits should be preceeded by an underscore
- every capital letter after the first should be preceeded by an underscore

Examples :

"Calculate15Plus5Equals20" -> "Calculate_15_Plus_5_Equals_20"

"This_Is_Already_Split_Correct" -> "This_Is_Already_Split_Correct"

"ThisIs_Not_SplitCorrect" -> "This_Is_Not_Split_Correct"

"_UnderscoreMarked_Test_Name_" -> _Underscore_Marked_Test_Name_"
"""

def to_underscore(name):
    if not name:
        return ""
    
    output = name[0]
    for i in range(1, len(name)):
        prev_char = name[i - 1]
        curr_char = name[i]
        
        if curr_char.isupper() and prev_char != "_":
            output += "_"
        elif curr_char.isdigit() and prev_char.isalpha():
            output += "_"
        output += curr_char
        
    return output

print(to_underscore('Calculate15Plus5Equals20'))
print(to_underscore('This_Is_Already_Split_Correct'))
print(to_underscore('ThisIs_Not_SplitCorrect'))
print(to_underscore('_UnderscoreMarked_Test_Name_'))