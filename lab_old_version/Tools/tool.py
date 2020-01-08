#!/usr/bin/env python3
# -*- coding: utf-8 -*-
import subprocess
import time
import sys, os, socket

class color:
   PURPLE = '\033[95m'
   CYAN = '\033[96m'
   DARKCYAN = '\033[36m'
   BLUE = '\033[94m'
   GREEN = '\033[92m'
   YELLOW = '\033[93m'
   RED = '\033[0;31m'
   BOLD = '\033[1m'
   UNDERLINE = '\033[4m'
   END = '\033[0m'
   HEADER = '\033[95m'
   OKBLUE = '\033[94m'
   OKGREEN = '\033[92m'
   WARNING = '\033[93m'
   FAIL = '\033[91m'

W  = '\033[0m'  # white (normal)
R  = '\033[31m' # red
G  = '\033[32m' # green
O  = '\033[33m' # orange
B  = '\033[34m' # blue
P  = '\033[35m' # purple
C  = '\033[36m' # cyan
GR = '\033[37m' # gray
T  = '\033[93m' # tan
M = '\033[1;35;32m' # magenta
E = '\033[0m' #END
user = socket.gethostname() #user
# P = '\033[05m'
# PE = '\033[25m' #Colors

class __main__(object):
    def __init__(self):
        self.cmd = sys.argv[1]
        try:
            if self.cmd == '1':
                os.system('netdiscover')
            elif self.cmd == '2':
                Domine = input(color.RED+"┌──[root@%s]─[%sDomine%s]\n└──╼ /" % (user, G, color.END)+ color.END)
                port = input(color.RED+"┌──[root@%s]─[%sPort%s]\n└──╼ /" % (user, G, color.END)+ color.END)
                os.system("cd Tools/xerxes && chmod 777 xerxes && ./xerxes %s %s" % (Domine, port))
            elif self.cmd == '3':
                os.system("cd Tools/airgeddon && chmod 777 airgeddon.sh && bash airgeddon.sh")
            elif self.cmd == '4':
                os.system('websploit')
            elif self.cmd == '5':
                print('En mantenimiento')
            elif self.cmd == '6':
                print('En mantenimiento')
            elif self.cmd == '7':
                print('En mantenimiento')
            elif self.cmd == '8':
                os.system('ghost-phisher')
            elif self.cmd == '9':
                print("""
            Tool for Hacking
                   Menu:
                   ┌──[root@%s]─[Tools]
                   └──╼ \-[Anonsurf
                   %s - %sstart    - %sStart system-wide anonymous tunneling under TOR proxy through iptables
            	   %s - %sstop     - %sReset original iptables settings and return to clear navigation
            	   %s - %srestart  - %sCombines "stop" and "start" options
            	   %s - %schange   - %sChanges identity restarting TOR
            	   %s - %sstatus   - %sCheck if AnonSurf is working properly
            	   %s - %smyip     - %sShow your current IP address
            	   %s - %sstarti2p - %sStart i2p services
            	   %s - %sstopi2p  - %sStop i2p services
                   """ % (user,W ,G ,R ,W ,G ,R ,W ,G ,R ,W ,G ,R ,W ,G ,R ,W ,G ,R ,W ,G ,R ,W ,G ,R  ))
                anon = input(color.RED+"┌──[root@%s]─[Tools/]\n└──╼ /" % (user)+ color.END)
                if anon == 'start' or anon == 'stop' or anon == 'restart' or anon == 'change' or anon == 'status' or anon == 'myip' or anon == 'starti2p' or anon == 'sstopi2p':
                    os.system("anonsurf %s" % (anon))
                else:
                    print(R+"algo ah salido mal ;("+E)
                    exit(1)
            elif self.cmd == '10':
                os.system("sudo beef-xss | tail -n 1 | cut -c 33-64")
                print(G+"Open the link"+E)
                print("User:%sbeef%s\nPassword:%sbeef%s\nUser and Password in 'config.yaml'" % (R, E, R, E))
            elif self.cmd == '11':
                print('En mantenimiento')
            elif self.cmd == '12':
                print('En mantenimiento')
            elif self.cmd == '13':
                print('En mantenimiento')
            elif self.cmd == '14':
                print('En mantenimiento')
            elif self.cmd == '15':
                print('En mantenimiento')
            elif self.cmd == '16':
                print('En mantenimiento')
            elif self.cmd == '17':
                print('En mantenimiento')
            elif self.cmd == '18':
                print('En mantenimiento')
            elif self.cmd == '19':
                print('En mantenimiento')
            elif self.cmd == '20':
                print('En mantenimiento')
            elif self.cmd == '21':
                print('En mantenimiento')
            elif self.cmd == '22':
                print('En mantenimiento')
            elif self.cmd == '23':
                print('En mantenimiento')
            elif self.cmd == '24':
                print('En mantenimiento')
            elif self.cmd == '26':
                print('En mantenimiento')
            elif self.cmd == '27':
                print('En mantenimiento')
            elif self.cmd == '28':
                print('En mantenimiento')
            elif self.cmd == '29':
                print('En mantenimiento')
            elif self.cmd == '30':
                print('En mantenimiento')
            elif self.cmd == '31':
                print('En mantenimiento')
            elif self.cmd == '32':
                print('En mantenimiento')
            elif self.cmd == '33':
                print('En mantenimiento')
            elif self.cmd == '34':
                print('En mantenimiento')
            elif self.cmd == '35':
                print('En mantenimiento')
            elif self.cmd == '36':
                print('En mantenimiento')
            elif self.cmd == '37':
                print('En mantenimiento')
            elif self.cmd == '38':
                print('En mantenimiento')
            elif self.cmd == '39':
                print('En mantenimiento')
            elif self.cmd == '40':
                print('En mantenimiento')
            elif self.cmd == '41':
                print('En mantenimiento')
            elif self.cmd == '42':
                print('En mantenimiento')
            elif self.cmd == '43':
                print('En mantenimiento')
            elif self.cmd == '44':
                print('En mantenimiento')
            elif self.cmd == '45':
                print('En mantenimiento')
            elif self.cmd == '46':
                print('En mantenimiento')
            elif self.cmd == '47':
                print('En mantenimiento')
            elif self.cmd == '48':
                print('En mantenimiento')
            elif self.cmd == '49':
                print('En mantenimiento')
            elif self.cmd == '50':
                print('En mantenimiento')
            elif self.cmd == '51':
                print('En mantenimiento')
            elif self.cmd == '52':
                print('En mantenimiento')
            elif self.cmd == '53':
                print('En mantenimiento')
            elif self.cmd == '54':
                port = input("Port for sniffing? >>")
                subprocess.call(['ngrep', 'port', port])
            elif self.cmd == '55':
                name = input("nombre para el AP >>")
                interface = input("interfaz para mode monitor >>")
                interface2 = input("interfaz conectada a internet >>")
                subprocess.call(['xterm', '-geometry', '100x30', '-e', 'bash Tools/git/create_ap/create_ap', interface, interface2, name])
                subprocess.call(['xterm', '-geometry', '100x30', '-e', 'bettercap -iface', interface ])
            elif self.cmd == '56':
                print('En mantenimiento')
            elif self.cmd == '57':
                print('En mantenimiento')
            elif self.cmd == '58':
                print('En mantenimiento')
            elif self.cmd == '59':
                print('En mantenimiento')
            elif self.cmd == '60':
                print('En mantenimiento')
            elif self.cmd == '61':
                print('En mantenimiento')
            elif self.cmd == '62':
                print('En mantenimiento')
            elif self.cmd == '63':
                print('En mantenimiento')
            elif self.cmd == '64':
                print('En mantenimiento')
            elif self.cmd == '65':
                print('En mantenimiento')
            elif self.cmd == '66':
                print('En mantenimiento')
            elif self.cmd == '67':
                print('En mantenimiento')
            elif self.cmd == '68':
                print('En mantenimiento')
            elif self.cmd == '69':
                print('En mantenimiento')
            elif self.cmd == '70':
                print('En mantenimiento')
            elif self.cmd == '71':
                print('En mantenimiento')
            elif self.cmd == '72':
                print('En mantenimiento')
            elif self.cmd == '73':
                print('En mantenimiento')
            elif self.cmd == '74':
                print('En mantenimiento')
            elif self.cmd == '75':
                print('En mantenimiento')
            elif self.cmd == '76':
                print('En mantenimiento')
            elif self.cmd == '77':
                print('En mantenimiento')
            elif self.cmd == '78':
                print('En mantenimiento')
            elif self.cmd == '79':
                print('En mantenimiento')
            elif self.cmd == '80':
                print('En mantenimiento')
            elif self.cmd == '81':
                print('En mantenimiento')
            elif self.cmd == '82':
                print('En mantenimiento')
            elif self.cmd == '83':
                print('En mantenimiento')
            elif self.cmd == '84':
                print('En mantenimiento')
            elif self.cmd == '85':
                print('En mantenimiento')
            elif self.cmd == '86':
                print('En mantenimiento')
            elif self.cmd == '87':
                print('En mantenimiento')
            elif self.cmd == '88':
                print('En mantenimiento')
            elif self.cmd == '89':
                print('En mantenimiento')
            elif self.cmd == '90':
                print('En mantenimiento')
            elif self.cmd == '91':
                print('En mantenimiento')
            elif self.cmd == '92':
                print('En mantenimiento')
            elif self.cmd == '93':
                print('En mantenimiento')
            elif self.cmd == '94':
                print('En mantenimiento')
            elif self.cmd == '95':
                print('En mantenimiento')

            else:
                print(color.RED+"No se identifico tu petición"+color.END)
                time.sleep(5)
                os.system('bash Lab.sh')
        except KeyboardInterrupt:
                os.system('bash Lab.sh')
if not os.getuid() == 0:
    print(color.RED+"[!]Previlegios root requeridos"+color.END)
    exit(1)
else:
    try:
        __main__()
    except KeyboardInterrupt:
        os.system('bash Lab.sh')
