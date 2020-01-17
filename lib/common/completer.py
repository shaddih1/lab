# -*- coding: utf-8 -*-

# standar python library
import platform, os, socket
from requests import get

class HeaderCompleter:

    def header(quiet):
        if not quiet:
            print("""
  ██▓    ▄▄▄       ▄▄▄▄
 ▓██▒   ▒████▄    ▓█████▄    By: Shady H
 ▒██░   ▒██  ▀█▄  ▒██▒ ▄██   Version : v0.0.1
 ▒██░   ░██▄▄▄▄██ ▒██░█▀     Twitter: @ShaddiH1
 ░██████▒▓█   ▓██▒░▓█  ▀█▓
 ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒
 ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░
   ░ ░    ░   ▒    ░    ░
     ░  ░     ░  ░ ░
                        ░""")
