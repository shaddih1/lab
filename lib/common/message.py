# -*- coding: utf-8 -*-

# standar python library
import os.path

def get_home_directory():
    try:
        homedir = os.path.expanduser("~")
    except:
        homedir = "-"
    return homedir
