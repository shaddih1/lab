#!/usr/bin/env python3
# -*- coding: utf8 -*-

# standar python library+
import sys
import argparse
import os

# check version python
if not sys.version_info.major == 3 and sys.version_info.minor >= 6:
	print("\nLab supports only python3.6 or higher\n")
	sys.exit(0)

# local lab classes
from lib.common import orchestra
from lib.common import message
from lib.common import helpers
from lib.common import main

def usage():
	"""where we parse all our arguments"""
	parser = argparse.ArgumentParser(description="Lab | Simplify your life | Ethical Hacking toolkit")
	parser.add_argument("-q", "--quiet", help="suppress header", action="store_true")
	parser.add_argument("-u", "--update", help="check if there is a new update"
		, action="store_true")
	parser.add_argument("--list-options", help="list Lab's options", action="store_true")
	parser.add_argument("--option", help="set an option to start"
		, metavar="<option>")
	if len(sys.argv) < 2:
		lab = main.MainMenu().start()
	return parser.parse_args()

def main():
	args = usage()
	if len(sys.argv) == 2:
		if args.quiet:
			print("\n[!] Please add more arguments\n")
			sys.exit()
	else:
		header = message.header(args.quiet)
	lab = orchestra.Conductor()
	if args.update:
		helpers.update()
	# --list-options
	if args.list_options:
		lab.list_options()
	if args.option:
		# Fire!
		lab.start(args.option)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(0)
