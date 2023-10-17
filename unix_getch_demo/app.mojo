# This demo will NOT work natively on Windows!
from python import Python

fn unix_getch() raises -> PythonObject:
    let sys = Python.import_module('sys')
    let tty = Python.import_module('tty')
    let termios = Python.import_module('termios')
    let fd = sys.stdin.fileno()
    let old_settings = termios.tcgetattr(fd)
    let _v = tty.setcbreak(fd)
    return sys.stdin.read(1)

fn cls() raises:
    let os = Python.import_module('os')
    let v = os.system('clear')

fn main() raises:
    print('Press any key...')
    let input_char = unix_getch()
    cls()
    print('You pressed:', input_char)