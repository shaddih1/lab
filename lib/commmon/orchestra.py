# -*- coding: utf-8 -*-

# standar python library
import os, platform, time

class LabConductor:

    def __init__(self):
        self.tools = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor,
            "tools" : self.tools,
            "view_mac" : self.view_mac,
            "change_mac" : self.change_mac,
            "metasploit" : self.metasploit,
            "updates" : self.updates,
            "more" : self.more
        }

    def start(self, args):
        while True:
            action = self.tools.get(args.lower())

            if action:
                action()
                break
            else:
                print("Error")
                sys.exit(0)

    def enable_tor(self):
        system = platform.system()
        date = time.ctime(time.time())
        if system == "Linux":
            os.system('service tor start')
            print(f"\n[+] Tor has been activaded at {date}\n")
        else:
            print(f"\n[!] This option does not work on {system}\n")

    def disable_tor(self):
        system = platform.system()
        date = time.ctime(time.time())
        if system == "Linux":
            os.system('sudo service tor stop')
            print(f"\n[+] Tor has been disabled at {date}\n")
        else:
            print(f"\n[!] This option does not work on {system}\n")

    def tools(self):
        print(3)

    def view_mac(self):
        print(4)

    def change_mac(self):
        print(5)

    def metasploit(self):
        print(6)

    def updates(self):
        print(7)

    def more(self):
        print(8)