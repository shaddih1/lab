# -*- coding: utf-8 -*-

# standar python library
import sys
import os
import readline

# local Lab classes
from lib.common import helpers
from lib.common import message
from lib.common import orchestra
from tools import tools

# clear screen
def clear_scr():
    os.system('clear')

class MainMenu:
    """\n┌──[Menu]─[/lab/]
└──╼ $\n
        1 ─ Tor          │  6 ─ Buy me a coffe
        2 ─ Tools        │  7 ─ More
        3 ─ MAC Address  │  8 ─ Credits
        4 ─ Metasploit   │  Exit
        5 ─ Update       │  """
    def __init__(self):
        self.exit = False
        self.menu = MainMenu.__doc__
        self.conductor = orchestra.Conductor()
        self.tool = tools.Tool()
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
        self.prompt = message.prompt()
        self.press_any_key = '[+] Press any key to go back: '
        self.invalid_option = '\n[!] Please enter a valid option'

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
                clear_scr()
        else:
            sys.exit(0)

    def tor(self):
        """\n┌──[Menu]─[/lab/tor]
└──╼ $\n
        1 ─ Enable
        2 ─ Disable
        3 ─ Status
        Exit"""
        tor_options = {
            "1" : self.conductor.enable_tor,
            "2" : self.conductor.disable_tor,
            "3" : self.conductor.tor_status
        }
        exit = False
        while not exit:
            menu = self.tor.__doc__
            tor_menu = print(menu)
            option = input(self.prompt).lower()
            exit = option == "exit"
            action = tor_options.get(option)
            if action:
                action()
            else:
                print(self.invalid_option)
        else:
            clear_scr()

    def tools(self):
        """\n┌──[Menu]─[/lab/tools]
└──╼ $\n"""
        doc = self.tools.__doc__
        show_doc = print(doc)
        tool = self.tool.run()

    def mac_address(self):
        """\n┌──[Menu]─[/lab/mac_address]
└──╼ $\n
        1 ─ View MAC
        2 ─ Change MAC
        Exit"""
        mac_address_options = {
            '1' : self.conductor.view_mac,
            '2' : self.conductor.change_mac
        }
        exit = False
        while not exit:
            menu = self.mac_address.__doc__
            mac_address_menu = print(menu)
            option = input(self.prompt).lower()
            exit = option == 'exit'
            action = mac_address_options.get(option)
            if action:
                action()
            else:
                print(self.invalid_option)
        else:
            clear_scr()

    def metasploit(self):
        """\n┌──[Menu]─[/lab/metasploit]
└──╼ $\n
        1 ─ Metasploit
        2 ─ EasySploit
        Exit"""
        metasploit_options = {
            '1' : self.conductor.metasploit,
            '2' : self.tool.easysploit
        }
        exit = False
        while not exit:
            menu = self.metasploit.__doc__
            metasploit_menu = print(menu)
            option = input(self.prompt).lower()
            exit = option == 'exit'
            action = metasploit_options.get(option)
            if action:
                action()
            else:
                print(self.invalid_option)
        else:
            clear_scr()

    def update(self):
        """\n┌──[Do you want to start the update?]-[Y/n]
└──╼ $ """
        prompt = self.update.__doc__
        option = input(prompt).lower()
        if option != 'y':
            clear_scr()
        else:
            update = helpers.update()

    def buy_me_a_coffe(self):
        """\n┌──[Menu]─[/lab/buy_me_a_coffe]
└──╼ $\n
        1 ─ Bitcoin
        Exit"""
        exit = False
        while not exit:
            menu = self.buy_me_a_coffe.__doc__
            buy_me_a_coffe_menu = print(menu)
            option = input(self.prompt).lower()
            exit = option == 'exit'
            if option == '1':
                print('\nComing soon\n')
                go_back = input(self.press_any_key)
                exit = True
            else:
                print(self.invalid_option)
        else:
            clear_scr()

    def more(self):
        print("\nComing soon\n")

    def credits(self):
        """\n┌──[Menu]─[/lab/credits]
└──╼ $\n
        1 ─ Shady H   │ @ShaddiH1
        2 ─ By_Orux   │ @By_Orux
        3 ─ D.J.Craft │ @DaveCraft\n"""
        exit = False
        while not exit:
            menu = self.credits.__doc__
            credits_menu = print(menu)
            go_back = input(self.press_any_key)
            exit = True
        else:
            clear_scr()
