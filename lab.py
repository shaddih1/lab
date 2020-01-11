#!/usr/bin/env python3
# -*- coding: utf8 -*-

# standar python library+
import sys, argparse, os

# local lab classes
from core.helper import LabTools
from core.added import *

def usage():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("-q", "--quiet", help="suppress war", action="store_true")
    parser.add_argument("option", choices=['enable_tor','disable_tor','tools','view_mac','change_mac','metasploit','more'],
        help="set a option to start")
    if len(sys.argv) < 2:
        pass
    return parser.parse_args()

def header(quiet):
    if not quiet:
        print(f"""
 ██▓    ▄▄▄       ▄▄▄▄      By: Shady H
▓██▒   ▒████▄    ▓█████▄    Version : v0.1
▒██░   ▒██  ▀█▄  ▒██▒ ▄██   Twitter: @ShaddiH1
▒██░   ░██▄▄▄▄██ ▒██░█▀     IP: {myip()}
░██████▒▓█   ▓██▒░▓█  ▀█▓   Local IP: {local_ip()}
░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒   Root: {root()}
░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░    platform: {system()}
  ░ ░    ░   ▒    ░    ░    Tor: {tor()}
    ░  ░     ░  ░ ░
                       ░""")

def main():
    args = usage()
    header(args.quiet)
    if args.option:
        # Fire!
        lab = LabTools()
        lab.start(args.option)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(0)
