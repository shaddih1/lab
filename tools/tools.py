# -*- coding: utf-8 -*-

# standar python library
import os

# local Lab classes
from lib.common import message

class Tool:

	def __init__(self):
		self.invalid_option = '\n[!] Please enter a valid option'
		self.tools = {
			'1' : self.findomain,
			'2' : self.eagleeye,
			'3' : self.easysploit,
			'4' : self.scanqli,
			'5' : self.sqlmap,
			'6' : self.shellphish,
			'7' : self.qrljacker,
			'8' : self.socialbox,
			'9' : self.rapidscan
		}
		self.prompt = message.prompt()

	def menu(self):
		tools = ['Findomain', 'EagleEye', 'EasySploit', 'ScanQLi',
		 'SQLMap', 'ShellPhish', 'QRLJacker', 'SocialBox', 'RapidScan']

		for n, tool in enumerate(tools, 1):
			print(f'\t{n} - {tool}')
		print('\tExit')

	def run(self):
		exit = False
		while not exit:
			self.menu()
			tool = input(self.prompt).lower()
			exit = tool == 'exit'

			action = self.tools.get(tool)
			if action:
				action()
			else:
				print(self.invalid_option)
		else:
			clear = os.system('clear')

	def findomain(self):
		print(1)

	def eagleeye(self):
		print(2)

	def easysploit(self):
		print(3)

	def scanqli(self):
		print(4)

	def sqlmap(self):
		print(5)

	def shellphish(self):
		print(6)

	def qrljacker(self):
		print(7)

	def socialbox(self):
		print(8)

	def rapidscan(self):
		print(9)
