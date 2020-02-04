# -*- coding: utf-8 -*-

# local Lab classes
from lib.common import helpers

def argument_message():
    """Print Argument message"""
    home_dir = helpers.get_home_dir()
    print(f"\n┌──[{home_dir}]─[/lab/]")
    print("└──╼ $\n")

# current version of lab
lab_version = "0.0.3"

def header(quiet):
    """Print the header, with version"""
    if not quiet:
        print(f"""\n  ██▓    ▄▄▄       ▄▄▄▄
 ▓██▒   ▒████▄    ▓█████▄
 ▒██░   ▒██  ▀█▄  ▒██▒ ▄██   v{lab_version} | Ethical Hacking Toolkit
 ▒██░   ░██▄▄▄▄██ ▒██░█▀         Made with <3 by Shady H
 ░██████▒▓█   ▓██▒░▓█  ▀█▓
 ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒
 ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░          Simplify your life
   ░ ░    ░   ▒    ░    ░
     ░  ░     ░  ░ ░
                        ░""")
