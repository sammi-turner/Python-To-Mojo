def file_read(name:str) -> str:
    file = open(name,"r+")
    return file.read()

contents = file_read("example.txt")
print(contents)