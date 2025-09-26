#!/usr/bin/env python3
from ctypes import *
import os

def ScoutStart():
    if os.fork() > 0:
        return
    
    os.setsid()
    if os.fork() > 0:
        os._exit(0)

    script_dir = os.path.dirname(os.path.abspath(__file__))
    file_path = os.path.join(script_dir, 'Socket.Scout.dylib')

    s = cdll.LoadLibrary(file_path)
    s.ScoutStart()

ScoutStart()
