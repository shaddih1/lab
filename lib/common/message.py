# -*- coding: utf-8 -*-

# local Lab classes
from lib.common import helpers

# get home directory
home_dir = helpers.get_home_dir()

def argument_message():
    message = f'''\n┌──[{home_dir}]─[/lab/]
└──╼ $'''

    return message

def prompt():
    prompt = f"""\n┌──[{home_dir}]─[/lab/]
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
 ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░          Pentesting tools
   ░ ░    ░   ▒    ░    ░        Thanks for using Lab
     ░  ░     ░  ░ ░
                        ░""")
