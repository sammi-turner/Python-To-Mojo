"""
Write a class Sphere that creates sphere objects.

Arguments for the constructor :

radius -> integer or float (do not round it)
mass   -> integer or float (do not round it)

Methods to be defined :

get_radius()       =>  radius of the Sphere (do not round it)
get_mass()         =>  mass of the Sphere (do not round it)
get_volume()       =>  volume of the Sphere (rounded to 5 place after the decimal)
get_surface_area() =>  surface area of the Sphere (rounded to 5 place after the decimal)
get_density()      =>  density of the Sphere (rounded to 5 place after the decimal)

Example :

ball = Sphere(2,50)
ball.get_radius()       -> 2
ball.get_mass()         -> 50
ball.get_volume()       -> 33.51032
ball.get_surface_area() -> 50.26548
ball.get_density()      -> 1.49208
"""

from math import pi

class Sphere(object):
    def __init__(self, radius, mass):
        self.radius = radius
        self.mass = mass
        self.volume = 4*pi * self.radius**3 / 3
        self.surface = 4*pi* self.radius**2
    def get_radius(self):
        return self.radius
    def get_mass(self):
        return self.mass
    def get_volume(self):
        return round(self.volume,5)
    def get_surface_area(self):
        return round(self.surface,5)
    def get_density(self):
        return round(self.mass/self.volume, 5)
    
s = Sphere(2, 50)
print(s.get_radius(), s.get_mass(), s.get_volume(), s.get_surface_area(), s.get_density())