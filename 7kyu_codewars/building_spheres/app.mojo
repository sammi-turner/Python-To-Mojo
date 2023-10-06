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

from python import Python
from math import round

struct Sphere:
    var radius: FloatLiteral
    var mass: FloatLiteral
    var volume: PythonObject
    var surface: PythonObject

    fn __init__(inout self, radius:FloatLiteral, mass:FloatLiteral) raises:
        let math = Python.import_module('math')
        self.radius = radius
        self.mass = mass
        self.volume = 4*math.pi * self.radius**3 / 3
        self.surface = 4*math.pi* self.radius**2

fn get_radius(s:Sphere) -> FloatLiteral:
    return s.radius

fn get_mass(s:Sphere) -> FloatLiteral:
    return s.mass

fn get_volume(s:Sphere) raises -> PythonObject:
    let py = Python.import_module('builtins')
    return py.round(s.volume, 5)

fn get_surface_area(s:Sphere) raises -> PythonObject:
    let py = Python.import_module('builtins')
    return py.round(s.surface, 5)

fn get_density(s:Sphere) raises -> PythonObject:
    let py = Python.import_module('builtins')
    return py.round(s.surface/s.volume, 5)

fn main() raises:    
    let s = Sphere(2, 50)
    print(get_radius(s), get_mass(s), get_volume(s), get_surface_area(s), get_density(s))