import random

def guess_number():
    target = random.randint(1, 20)
    num_guesses = 0
    
    while True:
        guess = int(input("\nGuess a number between 1 and 20: "))
        num_guesses += 1
        
        if guess < target:
            print("Too low.")
        elif guess > target:
            print("Too high.")
        else:
            print("\nCorrect! You got the number", target, "in", num_guesses, "guesses.\n")
            break

guess_number()