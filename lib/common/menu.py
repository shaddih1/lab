# -*- coding: utf-8 -*-

# standar python library
import os
import readline

# local Lab classes
from lib.common import message

class MainMenu:

    def __init__(self):
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

    def start(self):
        while True:
            option = input(message.menu_input())
            action = self.options.get(option)

            if action:
                action()
            else:
                print(message.menu_err())

    def tor(self):
        print(1)

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
        print(9)
