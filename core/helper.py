# -*- coding: utf-8 -*-

import os, platform, time

class LabTools:

    def __init__(self):
        self.tools = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor,
            "tools" : self.tools,
            "view_mac" : self.view_mac,
            "change_mac" : self.change_mac,
            "metasploit" : self.metasploit,
            "more" : self.more
        }

    def start(self, args):
        while True:
            action = self.tools.get(args.lower())

            if action:
                action()
                break

    def enable_tor(self):
        system = platform.system()
        time = time.ctime(time.time())
        if system == "Linux":
            os.system('service tor start')
            print(f"\nTor has been activaded at {time}")
        else:
            print(f"\nThis option does not work on {system}\n")

    def disable_tor(self):
        system = platform.system()
        date = time.ctime(time.time())
        if system == "Linux":
            os.system('sudo service tor stop')
            print(f"\nTor has been disabled at {date}")
        else:
            print(f"\nThis option does not work on {system}\n")
            
    def tools(self):
        print(3)

    def view_mac(self):
        print(4)

    def change_mac(self):
        print(5)

    def metasploit(self):
        print(6)

    def more(self):
        print(7)
