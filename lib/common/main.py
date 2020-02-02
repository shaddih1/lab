# -*- coding: utf-8 -*-

# standar python library
import sys
import os
import readline
import time

# local Lab classes
from lib.common import message
from lib.common import orchestra

class MainMenu:

    def __init__(self):
        self.exit = False
        self.completer = completer.MainMenuCompleter()
        self.prompt = self.completer.prompt()
        self.options = {
            "1" : self.tor,
            "2" : self.tools,
            "3" : self.mac_address,
            "4" : self.metasploit,
            "5" : self.update,
            "6" : self.buy_me_a_coffe,
            "7" : self.more,
            "8" : self.credits,
            "9" : self.about
        }
        self.conductor = orchestra.Conductor()
        self.error = "\n[!] This option does not exist\n"
        self.tor = {
            "1" : self.conductor.enable_tor,
            "2" : self.conductor.disable_tor
        }
        self.tools = []
        self.clear = os.system('clear')

    def start(self):
        """Display the menu and respond to the options"""
        while not self.exit:
            header = message.header(False)
            main_menu = self.completer.main_menu()

            option = input(self.prompt.lower())
            self.exit = option == "exit"

            action = self.options.get(option)
            if action:
                action()
            else:
                print(self.error)
                sleep = time.sleep(2)
                self.clear

    def tor(self):
        """Tor (anonymity network) options"""
        exit = False
        while not exit:
            self.clear
            tor_menu = self.completer.tor_menu()

            option = input(self.prompt.lower())
            exit = option == "exit"

            action = self.tor.get(option)
            if action:
                action()
            else:
                print(self.error)
                sleep = time.sleep(1.5)

    def tools(self):
        print(2)

    def mac_address(self):
        print(3)

    def metasploit(self):
        print(4)

    def update(self):
        print(5)

    def buy_me_a_coffe(self):
        print(6)

    def more(self):
        print(7)

    def credits(self):
        print(8)

    def about(self):
        sys.exit()