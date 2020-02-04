# -*- coding: utf-8 -*-

# standar python library
import time
import os

# local Lab classes
from lib.common import helpers
from lib.common import message

class MainMenu:

    """\n┌──[MainMenu]─[/lab/]
└──╼ $

        1 - Tor          |  6 - Buy me a coffe
        2 - Tools        |  7 - More
        3 - MAC address  |  8 - Credits
        4 - Metasploit   |  Exit
        5 - Update       |  """
    def __init__(self):
        self.home_dir = helpers.get_home_dir()
        self.header = message.header(False)
        self.menu = MainMenu.__doc__
        self.prompt = self.start.__doc__
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
        self.sleep = time.sleep(1.5)
        self.clear = os.system('clear')

    def start(self):

        f"""\n┌──[{self.home_dir}]─[/lab/menu]
└──╼ $ """
        exit = False
        while not exit:
            header = print(self.header)
            main_menu = print(self.menu)

            option = input(self.prompt.lower())
            exit = option == "exit"

            action = self.options.get(option)
            if action:
                action()
            else:
                error = print("bye")
                self.sleep
                self.clear

    def tor(self):
            f"""\n┌──[{self.home_dir}]─[/lab/menu]
└──╼ $

        1 - Enable
        2 - Disable
        3 - Status
        Exit"""

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
