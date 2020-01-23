# -*- coding: utf-8 -*-

# standar python library
import os.path

def get_home_directory():
    """get homedir"""
    homedir = os.path.expanduser("~")
    return homedir

def complete_message():
    """complete menu message"""
    print(f"\n┌──[{get_home_directory()}]─[/lab/]")
    print("└──╼ $\n")

# current version of lab
lab_version = "0.0.2"

def header(quiet):
    """Print the header, with version"""
    if not quiet:
        print(f"""\n  ██▓    ▄▄▄       ▄▄▄▄
 ▓██▒   ▒████▄    ▓█████▄
 ▒██░   ▒██  ▀█▄  ▒██▒ ▄██   v{lab_version} | Ethical Hacking Toolkit
 ▒██░   ░██▄▄▄▄██ ▒██░█▀          by Shady H | @ShaddiH1
 ░██████▒▓█   ▓██▒░▓█  ▀█▓
 ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒
 ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░           Simplify your life
   ░ ░    ░   ▒    ░    ░
     ░  ░     ░  ░ ░
                        ░""")
