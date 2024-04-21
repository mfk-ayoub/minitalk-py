import os
import signal
import sys
from client import putcolor
from logo import putbanner
def handling(signum, frame):
    global i, c
    mask =0x01
    if signum == signal.SIGUSR1:
        c |= (mask << i);
    elif signum ==  signal.SIGUSR2:
        c += 0
    i += 1
    if i == 16:
        print(chr(c), end = '', flush=True)
        c = 0
        i = 0

signal.signal(signal.SIGUSR1, handling)
signal.signal(signal.SIGUSR2, handling)

def signal_handler(sig, frame):
    putcolor('b')
    print("\t\tBye, Good Luck")
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
if __name__ == "__main__":
    i = 0
    c = 0
    pid = os.getpid()
    putbanner(pid)
    while True:
        signal.pause()
