# -*- coding: utf-8 -*-

# standar python library
import os
import platform
import time

# local lab classes
from lib.common import message

class Conductor:
    """class used to filter arguments"""
    def __init__(self):
        self.homedir = message.get_home_directory()
        self.system = platform.system()
        self.date = time.ctime(time.time())
        self.options = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor,
            "tools" : self.tools,
            "view_mac" : self.view_mac,
            "change_mac" : self.change_mac,
            "metasploit" : self.metasploit,
            "updates" : self.updates,
            "more" : self.more
        }
        self.tools = []

    def list_options(self):
        """Show all argument options added in Lab"""
        print(f"\n┌──[{self.homedir}]─[/lab/list_options]")
        print("└──╼ $\n")
        for i, options in enumerate(self.options):
            print(f"\t{options} - {self.options.get(options).__doc__}")
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
        """Tor (anonymity network) start and then exit"""
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
        """Tor (anonymity network) stop and then exit"""
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
        """Show all tools added in Lab"""
        print(f"\n┌──[{self.homedir}]─[/lab/tools]")
        print("└──╼ $\n")
        for i, tools in enumerate(self.tools, 1):
            print(f"\t{i} - {tools}")
        input("\n[+] Do you want to continue? Y/n : ")

    def view_mac(self):
        """Show your MAC address and then exit"""
        print(4)

    def change_mac(self):
        """Change your MAC address and then exit"""
        print(5)

    def metasploit(self):
        """6"""
        print(6)

    def updates(self):
        """7"""
        print(7)

    def more(self):
        """8"""
        print(8)
