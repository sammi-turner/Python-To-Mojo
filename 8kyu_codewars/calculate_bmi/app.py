"""
Write a BMI function that calculates body mass index (bmi = weight in kg / height in metres squared).

if bmi is less than or equal to 18.5, then return "Underweight"

if bmi is less than or equal to 25.0, then return "Normal"

if bmi is less than or equal to 30.0, then return "Overweight"

if bmi is over 30.0, then return "Obese"
"""

def bmi(weight, height) -> str:
    index = weight / (height ** 2)
    if index <= 18.5:
        return "Underweight"
    if index <= 25.0:
        return "Normal"
    if index <= 30.0:
        return "Overweight"
    return "Obese"

print(bmi(66, 1.80), bmi(105, 1.62))