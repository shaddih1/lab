# -*- coding: utf-8 -*-

# standar python library
import os
import platform
import time
from lib.common import message

class Conductor:

    def __init__(self):
        self.options = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor,
            "tools" : self.tools,
            "view_mac" : self.view_mac,
            "change_mac" : self.change_mac,
            "metasploit" : self.metasploit,
            "updates" : self.updates,
            "menu" : self.menu
        }

    def list_options(self):
        homedir = message.get_home_directory()
        print(f"\n┌──[{homedir}]─[ListOptions]")
        print("└──╼ $\n")
        for i, options in enumerate(self.options):
            if i != 2:
                print("\t[i]", options, "-", self.options.get(options).__doc__)
        print()

    def start(self, args):
        while True:
            action = self.options.get(args.lower())

            if action:
                action()
                break
            else:
                print("\n[!] Error\n")
                break

    def enable_tor(self):
        """tor (anonymity network) start and then exit"""
        system = platform.system()
        date = time.ctime(time.time())
        if system == "Linux":
            try:
                os.system('service tor start')
                print(f"\n[+] Tor has been activaded at {date}\n")
            except:
                os.system('systemctl tor start')
                print(f"\n[+] Tor has been activaded at {date}\n")
        else:
            print(f"\n[!] This option does not work on {system}\n")

    def disable_tor(self):
        """tor (anonymity network) stop and then exit"""
        system = platform.system()
        date = time.ctime(time.time())
        if system == "Linux":
            try:
                os.system('service tor stop')
                print(f"\n[+] Tor has been disabled at {date}\n")
            except:
                os.system('systemctl tor stop')
                print(f"\n[+] Tor has been disabled at {date}\n")
        else:
            print(f"\n[!] This option does not work on {system}\n")

    def tools(self):
        """3"""
        print(3)

    def view_mac(self):
        """4"""
        print(4)

    def change_mac(self):
        """5"""
        print(5)

    def metasploit(self):
        """6"""
        print(6)

    def updates(self):
        """7"""
        print(7)

    def menu(self):
        """8"""
        print(8)
