#!/usr/bin/env python3
# -*- coding: utf8 -*-

# standar python library+
import sys, argparse, os

# local lab classes
from modules.helper import LabTools

# check user
if os.geteuid() != 0:
    print("\nLab must be run with root privileges.\n")
    sys.exit(0)

def usage():
    parser = argparse.ArgumentParser(description="")
    parser.add_argument("-q", "--quiet", help="suppress war", action="store_true")
    parser.add_argument("-t", "--tool", metavar="tool", help="set a tool to start")
    if len(sys.argv) < 2:
        interactive()
    return parser.parse_args()

def header(quiet):
    if not quiet:
        print("""
 ██▓    ▄▄▄       ▄▄▄▄      
▓██▒   ▒████▄    ▓█████▄
▒██░   ▒██  ▀█▄  ▒██▒ ▄██
▒██░   ░██▄▄▄▄██ ▒██░█▀
░██████▒▓█   ▓██▒░▓█  ▀█▓
░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒
░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░
  ░ ░    ░   ▒    ░    ░
    ░  ░     ░  ░ ░
                       ░
                         """)

def main():
    args = usage()
    header(args.quiet)
    if args.tool:
        # Fire!
        lab = LabTools()
        lab.start(args.tool)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(0)
