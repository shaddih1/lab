# -*- coding: utf-8 -*-

from core.options import *

class LabTools:

    def __init__(self):
        self.tools = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor
            #"tools" : self.tools,
            #"view_mac" : self.view_mac,
            #"change_mac" : self.change_mac,
            #"metasploit" : self.metasploit,
            #"more" : self.more
        }

    def start(self, option):
        while True:
            action = self.tools.get(option.lower())

            if action:
                action()
            else:
                print("Error")
                break

    def disable_tor(self):
        print("2")
