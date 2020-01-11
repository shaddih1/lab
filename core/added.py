# -*- coding: utf-8 -*-

import platform, os, socket
from requests import get

def system():
    system = platform.platform()

    return system

def tor():
    system = platform.system()
    if system == "Linux":
        status = os.system('service tor status | head -3 | tail -1 | cut -c 13-29')
    else:
        status = "Not supported"

    return status

def root():
    try:
        if os.geteuid() == 0:
            root = "●green"
        elif os.geteuid() != 0:
            root =  "●red"
    except:
        root = "Not supported"

    return root

def local_ip():
    try:
        hostname = socket.gethostname()
        local_ip = socket.gethostbyname(hostname)
    except:
        local_ip = "127.0.0.1"

    return local_ip

def myip():
    try:
        myip = get('https://api.ipify.org').text
    except:
        myip = "Not supported"

    return myip
