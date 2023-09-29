from python import Python

fn main() raises:
    let py = Python.import_module('builtins')
    let rnd = Python.import_module('random')
    # Generate a random number between 1 and 100
    let target = rnd.randint(1, 20)
    
    # Initialize the number of guesses
    var num_guesses = 0
    
    while True:
        # Take a guess from the user
        let guess = py.int(py.input("Guess a number between 1 and 20: "))
        num_guesses += 1
        
        # Check the guess
        if guess < target:
            print("Too low.")
        elif guess > target:
            print("Too high.")
        else:
            print("Congratulations! You've guessed the number.")
            break