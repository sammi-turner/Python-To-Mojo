from sys import argv

fn main():
    print()
    let max = len(argv())
    for i in range(1, max):
        print(i, ". ", argv()[i])
    print()
