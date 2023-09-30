from python import Python

fn write_to_file(name:StringLiteral, text:StringLiteral) raises:
    let w = Python.import_module('builtins').open(name, "w+").write(text)

fn append_to_file(name:StringLiteral, text:StringLiteral) raises:
    let a = Python.import_module('builtins').open(name, "a+").write(text)

fn main() raises:
    write_to_file("example.txt", "Oh, ")
    append_to_file("example.txt", "hi Mark!")