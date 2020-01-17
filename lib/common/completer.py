# -*- coding: utf-8 -*-

# standar python library
import platform, os, socket
from requests import get

class HeaderCompleter:

    def header(quiet):
        if not quiet:
            print(f"""
  ██▓    ▄▄▄       ▄▄▄▄
 ▓██▒   ▒████▄    ▓█████▄    By: Shady H
 ▒██░   ▒██  ▀█▄  ▒██▒ ▄██   Version : v0.0.1
 ▒██░   ░██▄▄▄▄██ ▒██░█▀     Twitter: @ShaddiH1
 ░██████▒▓█   ▓██▒░▓█  ▀█▓   IP: {myip()}
 ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒   Local IP: {local_ip()}
 ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░    Root: {root()} Tools:
   ░ ░    ░   ▒    ░    ░    Platform: {system()}
     ░  ░     ░  ░ ░         Tor: {tor()}
                        ░""")

    def system():
        # get the platform
        system = platform.platform()

        return system

    def tor():
        system = platform.system()
        # check tor status
        if system == "Linux":
            status = os.system('service tor status | head -3 | tail -1 | cut -c 13-29')
        else:
            status = "Not supported"

        return status

    def root():
        # check user
        try:
            if os.geteuid() != 0:
                root = "●red"
            else:
                root = "●green"
        # windows
        except:
            root = "Not supported"

        return root

    def local_ip():
        # get local ip
        try:
            hostname = socket.gethostname()
            local_ip = socket.gethostbyname(hostname)
        # It does not work
        except:
            local_ip = "●red"

        return local_ip

    def myip():
        # get public ip
        try:
            myip = get('https://api.ipify.org').text
            # It does not work
        except:
            myip = "[!] Error"

        return myip
