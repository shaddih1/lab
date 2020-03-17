# -*- coding: utf-8 -*-

# standar python library
import os
import sys

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
		self.path = os.getcwd() + '/tools'

	def menu(self):
		tools = ['Findomain', 'EagleEye', 'EasySploit', 'ScanQLi',
		 'SQLMap', 'ShellPhish', 'QRLJacker', 'SocialBox', 'RapidScan']

		for n, tool in enumerate(tools, 1):
			print(f'\t{n} - {tool}')
		print('\tExit')

	def run(self):
		exit = False
		try:
			if os.chdir(self.path):
				pass
		except:
			os.mkdir(self.path)

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
		print('\ncoming soon\n')

	def eagleeye(self):
		print('\ncoming soon\n')

	def easysploit(self):
		print('\ncoming soon\n')

	def scanqli(self):
		print('\ncoming soon\n')

	def sqlmap(self):
		print('\ncoming soon\n')

	def shellphish(self):
		print('\ncoming soon\n')

	def qrljacker(self):
		print('\ncoming soon\n')

	def socialbox(self):
		print('\ncoming soon\n')

	def rapidscan(self):
		print('\ncoming soon\n')
