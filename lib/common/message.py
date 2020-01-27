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

def main_menu():
    print(f"""\n┌──[{get_home_directory()}]─[/lab/menu]
└──╼ $

        1 - Tor          |  6 - Buy me a coffe
        2 - Tools        |  7 - More
        3 - MAC address  |  8 - Credits
        4 - Metasploit   |  9 - Exit
        5 - Update       |  """)

def menu_input():
    """input message"""
    menu_input = f"""\n┌──[{get_home_directory()}]─[/lab/menu]
└──╼ $ """

    return menu_input

def menu_err():
    """menu Lab error """
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
