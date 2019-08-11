#!/usr/bin/env python3
import subprocess
import time
import sys

def get(cmd):
    """Return the output of bash command"""
    # just a helper function
    return subprocess.check_output(cmd).decode("utf-8").strip()

def get_value():
    """Get and return the maximun and the current values of brightness"""
    
    path = '/sys/class/backlight/' + get(["ls", "/sys/class/backlight/"]) 
    with open(path + '/brightness') as current_b, open(path + '/max_brightness') as max_b:
        c = int(current_b.read())
        m = int(max_b.read())
        return m, c
    
def set_brightness(percentage, base='max'):
    """Change the value of value of the brightness.
    If base='max', the setted value is based on the maximum value avalaible for the screen brightness.
    If base='current', the setted value is based on the current brightness of the screen.
    """
    m, c = get_value()
    path = '/sys/class/backlight/' + get(["ls", "/sys/class/backlight/"]) 
    with open(path + '/brightness', 'w+') as f:
        base_value = None
        if base == 'max':
            base_value = m
        elif base == 'current':
            base_value = c
        f.write(str(int(float(base_value*percentage))))
        
