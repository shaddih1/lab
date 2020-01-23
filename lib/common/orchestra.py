# -*- coding: utf-8 -*-

# standar python library
import subprocess
import platform
import re
import time

# local lab classes
from lib.common import message

class Conductor:
    """class used to filter arguments"""
    def __init__(self):
        self.complete_message = message.complete_message()
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
        self.complete_message
        # Loop over all options loaded into Lab
        for i, options in enumerate(self.options):
            print(f"\t{options} ─ {self.options.get(options).__doc__}")
        print()

    def start(self, args):
            action = self.options.get(args.lower())

            if action:
                action()
            else:
                print("\n[!] Error: The selected option does not exist\n")

    def enable_tor(self):
        """Tor (anonymity network) start and then exit"""
        try:
            if not self.system != "Linux":
                subprocess.run(["service","tor","start"])
                print(f"[+] Tor has been enable at {self.date}\n")
        except:
            print(f"[!] This option does not work on {self.system}\n")


    def disable_tor(self):
        """Tor (anonymity network) stop and then exit"""
        try:
            if not self.system != "Linux":
                subprocess.run(["service","tor","stop"])
                print(f"[+] Tor has been disable at {self.date}\n")
        except:
            print(f"[!] This option does not work on {self.system}\n")

    def tools(self):
        """Show all tools added in Lab"""
        # Loop over all tools loaded into Lab
        for i, tools in enumerate(self.tools, 1):
            print(f"\t{i} - {tools}")
        input("\n[+] Do you want to continue? Y/n : ")

    def view_mac(self):
        """Show your MAC address and then exit"""
        print("Coming Soon")

    def change_mac(self):
        """Change your MAC address and then exit"""
        print("Coming Soon")

    def metasploit(self):
        """Start Metasploit framework"""
        print("Coming Soon")

    def updates(self):
        """Check if there is a new update"""
        print("Coming Soon")

    def more(self):
        """Show a menu with more options"""
        print("Coming Soon")
