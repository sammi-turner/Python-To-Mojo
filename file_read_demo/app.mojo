from python import Python

fn file_read(name:String) raises -> PythonObject:
    return Python.import_module('builtins').open(name, "r+").read()

fn main() raises:
    let contents = file_read("example.txt")
    print(contents)
