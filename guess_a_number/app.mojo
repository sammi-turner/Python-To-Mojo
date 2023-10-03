from python import Python

fn main() raises:
    let py = Python.import_module('builtins')
    let rnd = Python.import_module('random')
    let target = rnd.randint(1, 20)
    var num_guesses = 0
    
    while True:
        let guess = py.int(py.input("\nGuess a number between 1 and 20: "))
        num_guesses += 1
        
        if guess < target:
            print("Too low.")
        elif guess > target:
            print("Too high.")
        else:
            print("\nCorrect! You got the number", target, "in", num_guesses, "guesses.\n")
            break