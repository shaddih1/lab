# -*- coding: utf-8 -*-

# standar python library
import os
import platform
import time
from lib.common import message

class Conductor:

    def __init__(self):
        self.homedir = message.get_home_directory()
        self.system = platform.system()
        self.date = date = time.ctime(time.time())
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

    # --list-options
    def list_options(self):
        print(f"\n┌──[{self.homedir}]─[ListOptions]")
        print("└──╼ $\n")
        for i, options in enumerate(self.options):
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
        if self.system == "Linux":
            try:
                os.system('service tor start')
                print(f"\n[+] Tor has been activaded at {self.date}\n")
            except:
                os.system('systemctl tor start')
                print(f"\n[+] Tor has been activaded at {self.date}\n")
        else:
            print(f"\n[!] This option does not work on {self.system}\n")

    def disable_tor(self):
        """tor (anonymity network) stop and then exit"""
        if self.system == "Linux":
            try:
                os.system('service tor stop')
                print(f"\n[+] Tor has been disabled at {self.date}\n")
            except:
                os.system('systemctl tor stop')
                print(f"\n[+] Tor has been disabled at {self.date}\n")
        else:
            print(f"\n[!] This option does not work on {self.system}\n")

    def tools(self):
        """show all tools added in Lab"""
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
