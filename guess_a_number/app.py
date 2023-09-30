import random

def guess_number():
    # Generate a random number between 1 and 100
    target = random.randint(1, 20)
    
    # Initialize the number of guesses
    num_guesses = 0
    
    while True:
        # Take a guess from the user
        guess = int(input("\nGuess a number between 1 and 20: "))
        num_guesses += 1
        
        # Check the guess
        if guess < target:
            print("Too low.")
        elif guess > target:
            print("Too high.")
        else:
            print(f"\nCorrect! You got the number {target} in {num_guesses} guesses.\n")
            break

guess_number()

