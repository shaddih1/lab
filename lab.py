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

def usage():
	"""where we parse all our arguments"""
	parser = argparse.ArgumentParser(description="Lab | Simplify your life | Ethical Hacking tool")
	parser.add_argument("-q", "--quiet", help="suppress header", action="store_true")
	parser.add_argument("--list-options", action="store_true", help="List Lab's options")
	parser.add_argument("--option", metavar="OPTION",help="set an option to start")

	return parser.parse_args()

def main():
	args = usage()
	message.header(args.quiet)
	lab = orchestra.Conductor()
	if args.list_options:
		# --list-options
		lab.list_options()
	elif args.option:
		# Fire!
		lab.start(args.option)

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        sys.exit(0)
