# -*- coding: utf-8 -*-

# standar python library
import sys
import os
import readline

# local Lab classes
from lib.common import helpers
from lib.common import message

class MainMenu:
    """\n┌──[Main Menu]─[/lab/]
└──╼ $

        1 ─ Tor          │  6 ─ Buy me a coffe
        2 ─ Tools        │  7 ─ More
        3 ─ MAC address  │  8 ─ Credits
        4 ─ Metasploit   │  Exit
        5 ─ Update       │  """
    def __init__(self):
        self.exit = False
        self.menu = MainMenu.__doc__
        self.prompt = message.prompt()
        self.options = {
            "1" : self.tor,
            "2" : self.tools,
            "3" : self.mac_address,
            "4" : self.metasploit,
            "5" : self.update,
            "6" : self.buy_me_a_coffe,
            "7" : self.more,
            "8" : self.credits
        }
        self.tor_options = {
            "1" : Tor().enable,
            "2" : Tor().disable,
            "3" : Tor().status
        }

    def start(self):
        while not self.exit:
            header = message.header(False)
            main_menu = print(self.menu)

            option = input(self.prompt).lower()
            self.exit = option == "exit"

            action = self.options.get(option)
            if action:
                action()
        else:
            sys.exit(0)

    def tor(self):
        """\n┌──[Main Menu]─[/lab/tor]
└──╼ $

        1 ─ Enable
        2 ─ Disable
        3 ─ Status
        Exit"""
        exit = False
        clear = os.system('clear')
        while not exit:
            tor_menu = print(self.tor.__doc__)

            option = input(self.prompt).lower()
            exit = option == "exit"

            action = self.tor_options.get(option)
            if action:
                action()
            else:
                clear 

    def tools(self):
        print("tools")

    def mac_address(self):
        print("mac")

    def metasploit(self):
        print("metasploit")

    def update(self):
        print("update")

    def buy_me_a_coffe(self):
        print("buy me a coffe")

    def more(self):
        print("more")

    def credits(self):
        print("credits")

class Tor:

    def enable(self):
        print("enable")

    def disable(self):
        print("disable")

    def status(selfs):
        print("status")
