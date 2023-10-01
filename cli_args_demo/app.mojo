from sys import argv

fn main():
    let max = len(argv())
    print()
    for i in range(1, max):
        print_no_newline(i)
        print_no_newline(". ")
        print(argv()[i])
    print()
    
