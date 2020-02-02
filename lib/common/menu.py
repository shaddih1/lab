# -*- coding: utf-8 -*-

# standar python library
import sys
import os
import readline
import time

# local Lab classes
from lib.common import message

class MainMenu:

    def __init__(self):
        self.home_dir = message.get_home_directory()
        self.menu_error = "\n[!] This option does not exist\n"
        self.options = {
            "1" : self.tor,
            "2" : self.tools,
            "3" : self.mac_address,
            "4" : self.metasploit,
            "5" : self.update,
            "6" : self.buy_me_a_coffe,
            "7" : self.more,
            "8" : self.credits,
            "9" : self.exit
        }
        self.tools = []

    def main_menu(self):
        print(f"""\n┌──[{self.home_dir}]─[/lab/menu]
└──╼ $

        1 - Tor          |  6 - Buy me a coffe
        2 - Tools        |  7 - More
        3 - MAC address  |  8 - Credits
        4 - Metasploit   |  9 - Exit
        5 - Update       |  """)

    def start(self):
        """display the menu and respond to the options"""
        while True:
            head = message.header(False)
            self.main_menu()
            option = input(message.menu_input())
            action = self.options.get(option)
            if action:
                complete_message = message.complete_message()
                action()
            else:
                print(self.menu_error)
                time.sleep(1.5)
                os.system('clear')

    def tor(self):
        """Tor (anonymity network), display the tor menu and respond to the options"""
        print(234)


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

    def exit(self):
        sys.exit()
