# -*- coding: utf-8 -*-

# standar python library
import os

def get_home_directory():
    """get homedir"""
    homedir = os.path.expanduser("~")
    return homedir

def complete_message():
    """complete menu message"""
    print(f"\n┌──[{get_home_directory()}]─[/lab/]")
    print("└──╼ $\n")

def menu_input():
    """"""
    menu_input = f"""\n┌──[{get_home_directory()}]─[/lab/menu]
└──╼ $ """

    return menu_input

def menu_err():
    """"""
    error = "\n[!] This option does not exist\n"

    return error

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
