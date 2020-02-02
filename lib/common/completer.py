# -*- coding: utf-8 -*-

# standar python library
import os

class MainMenuCompleter():

    def __init__(self):
        self.get_home_directory = os.path.expanduser("~")

    def prompt(self):
        """Complete prompt"""
        prompt = f"""\n┌──[{self.get_home_directory}]─[/lab/menu]
└──╼ $ """

        return prompt

    def tor_menu(self):
        """Print Tor Menu"""
        print(f"""\n┌──[{self.home_dir}]─[/lab/menu]
    └──╼ $

            1 - Enable
            2 - Disable
            3 - Status
            Exit""")

    def main_menu(self):
        """Print Main Menu"""
        print(f"""\n┌──[{self.home_dir}]─[/lab/menu]
    └──╼ $

            1 - Tor          |  6 - Buy me a coffe
            2 - Tools        |  7 - More
            3 - MAC address  |  8 - Credits
            4 - Metasploit   |  9 - About
            5 - Update       |  Exit""")
