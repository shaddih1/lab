#!/usr/bin/env python3
# -*- coding: utf8 -*-

# standar python library+
import sys, argparse, os

# local lab classes
from core.helper import LabTools

def usage():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("-q", "--quiet", help="suppress war", action="store_true")
    parser.add_argument("option", choces=['enable_tor','disable_tor','tools','view_mac','change_mac','metasploit','more'],
        help="set a option to start")
    if len(sys.argv) < 2:
        pass
    return parser.parse_args()

def header(quiet):
    if not quiet:
        print("""
 ██▓    ▄▄▄       ▄▄▄▄      By: Shady H
▓██▒   ▒████▄    ▓█████▄    Version : v0.1
▒██░   ▒██  ▀█▄  ▒██▒ ▄██   Twitter: @ShaddiH1
▒██░   ░██▄▄▄▄██ ▒██░█▀     IP:
░██████▒▓█   ▓██▒░▓█  ▀█▓   Local IP:
░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒   Root:   Tor:
░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░    Os:
  ░ ░    ░   ▒    ░    ░    Tor:
    ░  ░     ░  ░ ░
                       ░
                         """)

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
