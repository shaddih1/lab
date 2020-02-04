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
        self.menu = MainMenu.__doc__
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

    def start(self):
        """\n┌──[Main Menu]─[/lab/]
└──╼ $ """
        exit = False
        while not exit:
            header = message.header(False)
            main_menu = print(self.menu)
            prompt = self.start.__doc__

            option = input(prompt).lower()
            exit = option == "exit"

            action = self.options.get(option)
            if action:
                action()
        else:
            sys.exit()

    def tor(self):
        f"""\n┌──[Main Menu]─[/lab/tor]
└──╼ $

        1 ─ Enable
        2 ─ Disable
        3 ─ Status
        Exit"""
        tor_menu = self.tor.__doc__
        print(tor_menu)

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
