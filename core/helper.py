# -*- coding: utf-8 -*-

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
        print("1")

    def disable_tor(self):
        print("2")

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
