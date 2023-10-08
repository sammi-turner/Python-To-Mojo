"""
Write a Block struct that creates block objects.

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

struct Block:
    var width: Int
    var length: Int
    var height: Int

    fn __init__(inout self, width:Int, length:Int, height:Int):
        self.width = width
        self.length = length
        self.height = height

    fn get_width(self) -> Int:
        return self.width

    fn get_length(self) -> Int:
        return self.length

    fn get_height(self) -> Int:
        return self.height

    fn get_volume(self) -> Int:
        return self.width * self.length * self.height

    fn get_surface_area(self) -> Int:
        let wl = self.width * self.length * 2
        let wh = self.width * self.height * 2
        let lh = self.length * self.height * 2
        return wl + wh + lh

fn main():    
    let x = Block(2,4,6)
    print(x.get_width(), x.get_length(), x.get_height(), x.get_volume(), x.get_surface_area())
