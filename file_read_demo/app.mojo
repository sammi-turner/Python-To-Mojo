from python import Python

fn file_read(name:String) raises -> PythonObject:
    let py = Python.import_module('builtins')
    let file = py.open(name,"r+")
    let contents = file.read()
    return contents

fn main() raises:
    let contents = file_read("example.txt")
    print(contents)