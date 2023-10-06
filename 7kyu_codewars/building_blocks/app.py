"""
Write a Block class that creates block objects.

Requirements :

The constructor should take an array as an argument, this will contain 3 integers of the form (width, length, height) from which the block should be created.

Define these methods:

`get_width()` return the width of the `Block`

`get_length()` return the length of the `Block`

`get_height()` return the height of the `Block`

`get_volume()` return the volume of the `Block`

`get_surface_area()` return the surface area of the `Block`

Example :

b = Block([2,4,6]) -> create a `Block` object with a width of `2` a length of `4` and a height of `6`

b.get_width() -> return 2

b.get_length() -> return 4

b.get_height() -> return 6

b.get_volume() -> return 48

b.get_surface_area() -> return 88

"""

class Block:
    def __init__(self, dimensions):
        self.width = dimensions[0]
        self.length = dimensions[1]
        self.height = dimensions[2]

    def get_width(self):
        return self.width
    
    def get_length(self):
        return self.length

    def get_height(self):
        return self.height
    
    def get_volume(self):
        return self.width * self.length * self.height
    
    def get_surface_area(self):
        wl = self.width * self.length * 2
        wh = self.width * self.height * 2
        lh = self.length * self.height * 2
        return wl + wh + lh
    
b = Block([2,4,6])
print(b.get_width(), b.get_length(), b.get_height(), b.get_volume(), b.get_surface_area())
