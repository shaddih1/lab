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

def usage():
	"""where we parse all our arguments"""
	parser = argparse.ArgumentParser(description="Lab | Simplify your life | Ethical Hacking tool")
	parser.add_argument("-q", "--quiet", help="suppress header", action="store_true")
	parser.add_argument("-u", "--update", help="check if there is a new update", action="store_true")
	parser.add_argument("--list-options", help="list Lab's options", action="store_true")
	parser.add_argument("--option", help="set an option to start"
		, metavar="OPTION")

	return parser.parse_args()

def main():
	args = usage()
	message.header(args.quiet)
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
