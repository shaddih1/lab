# -*- coding: utf-8 -*-

# standar python library
import platform, os

def system():
    system = platform.platform()

    return system

def tor():
    system = platform.system()
    if system == "Linux":
        status = os.system('service tor status | head -3 | tail -1 | cut -c 13-29')
    else:
        status = "-"

    return status

def root():
    try:
        # check user
        if os.geteuid() == 0:
            root = "●green"
        elif os.geteuid() != 0:
            root =  "●red"
    except:
        root = "-"

    return root
