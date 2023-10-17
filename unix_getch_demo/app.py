# This demo will NOT work natively on Windows!
import os
import sys
import tty
import termios

def unix_getch() -> str:
    fd = sys.stdin.fileno()
    v = termios.tcgetattr(fd)
    tty.setcbreak(fd)
    return sys.stdin.read(1)

print('Press any key...')
input_char = unix_getch()
os.system('clear')
print('You pressed:', input_char)
