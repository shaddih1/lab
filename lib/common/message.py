# -*- coding: utf-8 -*-

# standar python library
from lib.common import completer

def argument_message():
    """Print Argument message"""
    complete = complete.MainMenu()
    print(f"\n┌──[{complete.self.get_home_directory}]─[/lab/]")
    print("└──╼ $\n")

# current version of lab
lab_version = "0.0.2"

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
