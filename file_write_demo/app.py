def write_to_file(file, text):
    open(file, 'w').write(text)

def append_to_file(file, text):
    open(file, 'a').write(text)

write_to_file("example.txt", "Oh, ")
append_to_file("example.txt", "hi Mark!")