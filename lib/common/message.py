# -*- coding: utf-8 -*-

# standar python library
import os.path

def get_home_directory():
    homedir = os.path.expanduser("~")
    return homedir
