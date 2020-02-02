# -*- coding: utf-8 -*-

# standar python library
import os

def get_home_directory():
    """get homedir"""
    home_dir = os.path.expanduser("~")

    return home_dir

def complete_message():
    """complete message"""
    print(f"\n┌──[{get_home_directory()}]─[/lab/]")
    print("└──╼ $\n")

def prompt():
    """input message"""
    prompt = f"""\n┌──[{get_home_directory()}]─[/lab/menu]
└──╼ $ """

    return prompt

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
