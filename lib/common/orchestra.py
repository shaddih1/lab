# -*- coding: utf-8 -*-

# standar python library
import subprocess
import platform
import time
import socket
from getmac import get_mac_address

# local Lab classes
from lib.common import message

class Conductor:
    """class used to filter arguments"""
    def __init__(self):
        self.complete_message = message.complete_message()
        self.platform = platform.system()
        self.date = time.ctime(time.time())
        self.options = {
            "enable_tor" : self.enable_tor,
            "disable_tor" : self.disable_tor,
            "tools" : self.tools,
            "view_mac" : self.view_mac,
            "change_mac" : self.change_mac,
            "metasploit" : self.metasploit,
            "more" : self.more
        }
        self.tools = []
        self.local_ip = socket.gethostbyname(socket.gethostname())
        self.mac = get_mac_address()

    def list_options(self):
        """Show all argument options added in Lab"""
        self.complete_message
        # Loop over all options loaded into Lab
        for i, options in enumerate(self.options):
            print(f"\t{options} ─ {self.options.get(options).__doc__}")
        print()

    def start(self, args):
        """respond to options"""
        action = self.options.get(args.lower())
        if action:
            action()
        else:
            print("\n[!] Error: The selected option does not exist\n")

    def enable_tor(self):
        """Tor (anonymity network) start and then exit"""
        if not self.platform != "Linux":
            enable = subprocess.run(["service","tor","start"])
            print(f"[+] Tor has been enable at {self.date}\n")
        else:
            print(f"[!] This option does not work on {self.platform}\n")

    def disable_tor(self):
        """Tor (anonymity network) stop and then exit"""
        if not self.platform != "Linux":
            disable = subprocess.run(["service","tor","stop"])
            print(f"[+] Tor has been disable at {self.date}\n")
        else:
            print(f"[!] This option does not work on {self.platform}\n")

    def status_tor(self):
        print("Minecraft")

    def tools(self):
        """Show all tools added in Lab"""
        # Loop over all tools loaded into Lab
        for i, tools in enumerate(self.tools, 1):
            print(f"\t{i} - {tools}")
        if not self.tools != []:
            pass
        else:
            input("\n[+] Do you want to continue? Y/n : ")

    def view_mac(self):
        """Show your MAC address and then exit"""
        print(f"[+] Host\t{self.local_ip}\tMAC\t{self.mac}\n")

    def change_mac(self):
        """Change your MAC address and then exit"""
        print("Coming Soon\n")

    def metasploit(self):
        """Start Metasploit framework"""
        if not self.platform != "Linux":
            print("[!] This option will be improved in the future.\n")
            msfconsole = subprocess.run(["msfconsole","-q"])
        else:
            print(f"[!] This option does not work on {self.platform}\n")

    def more(self):
        """Show a menu with more options"""
        print("Coming Soon\n")
