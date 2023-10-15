# This demo will NOT work natively on Windows!
import sys
import tty
import termios

def unix_getch() -> str:
    fd = sys.stdin.fileno()
    old_settings = termios.tcgetattr(fd)
    tty.setcbreak(fd)
    return sys.stdin.read(1)

print('Press any key...')
input_char = unix_getch()
print('You pressed:', input_char)
