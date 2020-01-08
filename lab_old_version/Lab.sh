#!/usr/bin/env bash

reset
# COLORS

#red
    R="\e[1;31m"
#light red
    LR="\e[0;31m"
#blue
    B="\e[1;34m"
#yellow
    Y="\e[1;33m"
#light yellow
    LY="\e[0;33m"
#green
    G="\e[0;32m"
#light green
    LG="\e[1;32m"
#white
    W="\e[1;37m"
#light white
    LW="\e[0;37m"
#end
    E="\e[1;0m"
#blink
    BK="\033[05m"
    BKE="\033[25m"

menu () {
  echo -e $LW"
Tool for Hacking
       Menu
       $R┌──[$USER@`hostname`]─[$B$PWD$R]
       $R└──╼ \$$LW

       $LW   1 - Enable anonsurf $LR | $E$LW 6 - Disable anonsurf
       $LW   2 - Tools           $LR | $E$LW 7 - Updates
       $LW   3 - View MAC        $LR | $E$LW 8 - Buy me a coffe
       $LW   4 - Change MAC      $LR | $E$LW 9 - More
       $LW   5 - Metasploit      $LR | $E$LW 0 - Exit"
}

reader () {
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab]
       └──╼ \$ " op
  case "$op" in
    1)
      anonstart
    ;;
    2)
      tools
    ;;
    3)
      viewmac
    ;;
    4)
      changemac
    ;;
    5)
      metapt
    ;;
    6)
      anonstop
    ;;
    7)
      updte
    ;;
    8)
      buycf
    ;;
    9)
      clear
      labii
    ;;
    0)
      reset
      exit
    ;;
    help)
      echo""
    ;;
    -h)
      echo""
    ;;
    -o)
      echo""
    ;;
    *)
      clear
      lab
    ;;
  esac
}

anonstart () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Enable-anonsurf$R]
       $R└──╼ \$ 1"
  echo ""
  anonsurf start | head -n 11
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Enable-anonsurf$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  clear
  lab
}

tools () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Tools$R]
       $R└──╼ \$ 2"
  echo -e "
       $LW   1 - Netdiscover    $R | $LW 51 - Secret Keeper
       $LW   2 - Xerxes         $R | $LW 52 - Digger
       $LW   3 - Airgeddon      $R | $LW 53 - Crips
       $LW   4 - Websploit      $R | $LW 54 - Ngrep
       $LW   5 - Eternal scanner$R | $LW 55 - evil-hostpod
       $LW   6 - SecHub         $R | $LW 56 -
       $LW   7 - SocialPish     $R | $LW 57 -
       $LW   8 - Ghost-Phisher  $R | $LW 58 -
       $LW   9 - Anonsurf       $R | $LW 59 -
       $LW   10 - Beef-xss      $R | $LW 60 -
       $LW   11 - Cupp          $R | $LW 61 -
       $LW   12 - LALIN         $R | $LW 62 -
       $LW   13 - Dragon        $R | $LW 63 -
       $LW   14 - SQLmap        $R | $LW 64 -
       $LW   15 - Blazy         $R | $LW 65 -
       $LW   16 - Sniper        $R | $LW 66 -
       $LW   17 - Infoga        $R | $LW 67 -
       $LW   18 - EggShell      $R | $LW 68 -
       $LW   19 - Enigma        $R | $LW 69 -
       $LW   20 - Empire        $R | $LW 70 -
       $LW   21 - Zerodoor      $R | $LW 71 -
       $LW   22 - TheFatRat     $R | $LW 72 -
       $LW   23 - Shellter      $R | $LW 73 -
       $LW   24 - Arcanus       $R | $LW 74 -
       $LW   25 - Macchanger    $R | $LW 75 -
       $LW   26 - WPScan        $R | $LW 76 -
       $LW   27 - RouteSploit   $R | $LW 77 -
       $LW   28 - imROT         $R | $LW 78 -
       $LW   29 - infog         $R | $LW 79 -
       $LW   30 - ReconDog      $R | $LW 80 -
       $LW   31 - Quasar        $R | $LW 81 -
       $LW   32 - Patator       $R | $LW 82 -
       $LW   33 - ANDRAX        $R | $LW 83 -
       $LW   34 - Atlas         $R | $LW 84 -
       $LW   35 - Findsploit    $R | $LW 85 -
       $LW   36 - Burpsuite     $R | $LW 86 -
       $LW   37 - Aircrack-ng   $R | $LW 87 -
       $LW   38 - Bettercap     $R | $LW 88 -
       $LW   39 - Metasploit    $R | $LW 89 -
       $LW   40 - Maltego       $R | $LW 90 -
       $LW   41 - John          $R | $LW 91 -
       $LW   42 - Johnny        $R | $LW 92 -
       $LW   43 - Medusa        $R | $LW 93 -
       $LW   44 - Hydra         $R | $LW 94 -
       $LW   45 - Golismero     $R | $LW 95 -
       $LW   46 - Nikto         $R | $LW
       $LW   47 - Wireshark     $R | $LW d - Details
       $LW   48 - Binwalk       $R | $LW r - Reinstaller
       $LW   49 - Veil          $R | $LW 0 - Go back
       $LW   50 - Nmap          $R | $LW 99 - Exit"
  echo -e $R""
  TT="python3 Tools/tools.py"
  read -p "       ┌──[$USER@`hostname`]─[/lab/Tools]
       └──╼ \$ " tls1
  if test $tls1 == '1'
  then
    $TT 1
  elif test $tls1 == '2'
  then
    $TT 2
  elif test $tls1 == '3'
  then
    $TT 3
  elif test $tls1 == '4'
  then
    $TT 4
  elif test $tls1 == '5'
  then
    $TT 5
  elif test $tls1 == '6'
  then
    $TT 6
  elif test $tls1 == '7'
  then
    $TT 7
  elif test $tls1 == '8'
  then
    $TT 8
  elif test $tls1 == '9'
  then
    $TT 9
  elif test $tls1 == '10'
  then
    $TT 10
  elif test $tls1 == '11'
  then
    $TT 11
  elif test $tls1 == '12'
  then
    $TT 12
  elif test $tls1 == '13'
  then
    $TT 13
  elif test $tls1 == '14'
  then
    $TT 14
  elif test $tls1 == '15'
  then
    $TT 15
  elif test $tls1 == '16'
  then
    $TT 16
  elif test $tls1 == '17'
  then
    $TT 17
  elif test $tls1 == '18'
  then
    $TT 18
  elif test $tls1 == '19'
  then
    $TT 19
  elif test $tls1 == '20'
  then
    $TT 20
  elif test $tls1 == '21'
  then
    $TT 21
  elif test $tls1 == '22'
  then
    $TT 22
  elif test $tls1 == '23'
  then
    $TT 23
  elif test $tls1 == '24'
  then
    $TT 24
  elif test $tls1 == '25'
  then
    changemac
  elif test $tls1 == '26'
  then
    $TT 26
  elif test $tls1 == '27'
  then
    $TT 27
  elif test $tls1 == '28'
  then
    $TT 28
  elif test $tls1 == '29'
  then
    $TT 29
  elif test $tls1 == '30'
  then
    $TT 30
  elif test $tls1 == '31'
  then
    $TT 31
  elif test $tls1 == '32'
  then
    $TT 32
  elif test $tls1 == '33'
  then
    $TT 33
  elif test $tls1 == '34'
  then
    $TT 34
  elif test $tls1 == '35'
  then
    $TT 35
  elif test $tls1 == '36'
  then
    $TT 36
  elif test $tls1 == '37'
  then
    $TT 37
  elif test $tls1 == '38'
  then
    $TT 38
  elif test $tls1 == '39'
  then
    $TT 39
  elif test $tls1 == '40'
  then
    $TT 40
  elif test $tls1 == '41'
  then
    $TT 41
  elif test $tls1 == '42'
  then
    $TT 42
  elif test $tls1 == '43'
  then
    $TT 43
  elif test $tls1 == '44'
  then
    $TT 44
  elif test $tls1 == '45'
  then
    $TT 45
  elif test $tls1 == '46'
  then
    $TT 46
  elif test $tls1 == '47'
  then
    $TT 47
  elif test $tls1 == '48'
  then
    $TT 48
  elif test $tls1 == '49'
  then
    $TT 49
  elif test $tls1 == '50'
  then
    $TT 50
  elif test $tls1 == '51'
  then
    $TT 51
  elif test $tls1 == '52'
  then
    $TT 52
  elif test $tls1 == '53'
  then
    $TT 53
  elif test $tls1 == '54'
  then
    $TT 54
  elif test $tls1 == '55'
  then
    read -p "nombre para el AP >>" name
    read -p "interfaz para mode monitor >>" inface
    read -p "interfaz conectada a internet >>" inface2
    xterm -e "cd Tools/git/create_ap ; bash create_ap $inface $inface2 $name"
  elif test $tls1 == '56'
  then
    $TT 56
  elif test $tls1 == '57'
  then
    $TT 57
  elif test $tls1 == '58'
  then
    $TT 58
  elif test $tls1 == '59'
  then
    $TT 59
  elif test $tls1 == '60'
  then
    $TT 60
  elif test $tls1 == '61'
  then
    $TT 61
  elif test $tls1 == '62'
  then
    $TT 62
  elif test $tls1 == '63'
  then
    $TT 63
  elif test $tls1 == '64'
  then
    $TT 64
  elif test $tls1 == '65'
  then
    $TT 65
  elif test $tls1 == '66'
  then
    $TT 66
  elif test $tls1 == '67'
  then
    $TT 67
  elif test $tls1 == '68'
  then
    $TT 68
  elif test $tls1 == '69'
  then
    $TT 69
  elif test $tls1 == '70'
  then
    $TT 70
  elif test $tls1 == '71'
  then
    $TT 71
  elif test $tls1 == '72'
  then
    $TT 72
  elif test $tls1 == '73'
  then
    $TT 73
  elif test $tls1 == '74'
  then
    $TT 74
  elif test $tls1 == '75'
  then
    $TT 75
  elif test $tls1 == '76'
  then
    $TT 76
  elif test $tls1 == '77'
  then
    $TT 77
  elif test $tls1 == '78'
  then
    $TT 78
  elif test $tls1 == '79'
  then
    $TT 79
  elif test $tls1 == '80'
  then
    $TT 80
  elif test $tls1 == '81'
  then
    $TT 81
  elif test $tls1 == '82'
  then
    $TT 82
  elif test $tls1 == '83'
  then
    $TT 83
  elif test $tls1 == '84'
  then
    $TT 84
  elif test $tls1 == '85'
  then
    $TT 85
  elif test $tls1 == '86'
  then
    $TT 86
  elif test $tls1 == '87'
  then
    $TT 87
  elif test $tls1 == '88'
  then
    $TT 88
  elif test $tls1 == '89'
  then
    $TT 89
  elif test $tls1 == '90'
  then
    $TT 90
  elif test $tls1 == '91'
  then
    $TT 91
  elif test $tls1 == '92'
  then
    $TT 92
  elif test $tls1 == '93'
  then
    $TT 93
  elif test $tls1 == '94'
  then
    $TT 94
  elif test $tls1 == '95'
  then
    $TT 95
  elif test $tls1 == 'd'
  then
    details
  elif test $tls1 == 'r'
  then
    bash install.sh reinstall
  elif test $tls1 == '0'
  then
    clear
    lab
  elif test $tls1 == '99'
  then
    clear
    exit
  else
    tools
  fi
}

details () {
  clear
  banner
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Tools/Details$R]
       $R└──╼ \$ 26"
  echo -e "
       $LW   1 - Netdiscover    $R | $LW Network address discovering tool
       $LW   2 - Xerxes         $R | $LW The most powerful DoS tool
       $LW   3 - Airgeddon      $R | $LW Audit wireless networks
       $LW   4 - Websploit      $R | $LW Advanced MITM framework
       $LW   5 - Eternal scanner$R | $LW Scans hosts for eternalblue vulnerabilities
       $LW   6 - SecHub         $R | $LW Security/Hacking Kit
       $LW   7 - SocialPish     $R | $LW Ultimate phishing tool with Ngrok integrated
       $LW   8 - Ghost-Phisher  $R | $LW Fake AP,MITM,Session hijacking etc...
       $LW   9 - Anonsurf       $R | $LW Tuunneling under TOR proxy through iptables
       $LW   10 - Beef          $R | $LW The browser exploitation framework
       $LW   11 - Cupp          $R | $LW Make specific worldlists
       $LW   12 - LALIN         $R | $LW Automatically install any package for pentest
       $LW   13 - Dragon        $R | $LW Hash cracker/Advanced Hash Manipulation
       $LW   14 - SQLmap        $R | $LW Automatic SQL injection and database
       $LW   15 - Blazy         $R | $LW Login bruteforcer/tests for CSRF etc...
       $LW   16 - Sniper        $R | $LW Automated Pentest Recon Scanner
       $LW   17 - Infoga        $R | $LW Email Information Gathering
       $LW   18 - EggShell      $R | $LW Penetrate android platforms
       $LW   19 - Enigma        $R | $LW Multiplatform payload dropper
       $LW   20 - Empire        $R | $LW PowerShell and Python post-exploitation agent
       $LW   21 - Zerodoor      $R | $LW Penetrate android platforms
       $LW   22 - TheFatRat     $R | $LW Generate undetectable payloads
       $LW   23 - Shellter      $R | $LW Inject payload into .exe
       $LW   24 - Arcanus       $R | $LW Customized payload generator/handler
       $LW   25 - Macchanger    $R | $LW Easily change your mac address
       $LW   26 - WPScan        $R | $LW Free WordPress vulnerability scanner
       $LW   27 - RouteSploit   $R | $LW Exploitation Framework for Embedded Devices
       $LW   28 - imROT         $R | $LW Send a message with text encryption to your whatsapp contact
       $LW   29 - infog         $R | $LW Information Gathering Tool
       $LW   30 - ReconDog      $R | $LW Reconnaissance Swiss Army Knife
       $LW   31 - QuasarRAT     $R | $LW Remote Administration Tool for Windows
       $LW   32 - Patator       $R | $LW Multi-purpose brute-forcer
       $LW   33 - ANDRAX        $R | $LW The first and unique Penetration Testing platform for Android
       $LW   34 - Atlas         $R | $LW Quick SQLMap Tamper Suggester
       $LW   35 - Findsploit    $R | $LW Find exploits in local and online databases
       $LW   36 - Burpsuite     $R | $LW Next-gen BurpSuite penetration testing tool
       $LW   37 - Aircrack-ng   $R | $LW WiFi security auditing tools suite
       $LW   38 - Bettercap     $R | $LW The Swiss Army Knife for network reconnaissance
       $LW   39 - Metasploit    $R | $LW The world’s most used penetration testing framework
       $LW   40 - Maltego       $R | $LW Maltego Penetration Testing Transforms
       $LW   41 - John          $R | $LW Fast password cracker
       $LW   42 - Johnny        $R | $LW The GUI frontend to the John the Ripper password cracker
       $LW   43 - Medusa        $R | $LW Medusa is a speedy,login brute-forcer
       $LW   44 - Hydra         $R | $LW Hydra is a parallelized login cracker
       $LW   45 - Golismero     $R | $LW Free software framework for security testing
       $LW   46 - Nikto         $R | $LW Web server scanner
       $LW   47 - Wireshark     $R | $LW Network traffic analyzer
       $LW   48 - Binwalk       $R | $LW Firmware Analysis Tool
       $LW   49 - Veil          $R | $LW Tool designed to generate metasploit payloads
       $LW   50 - Nmap          $R | $LW Free Security Scanner For Network Exploration
       $LW   51 - Secret Keeper $R | $LW Python Script To Encrypt & Decrypt Files
       $LW   52 - Digger        $R | $LW Python script which can do a lot of basic tasks
       $LW   53 - Crips         $R | $LW Information Gathering Tool
       $LW   54 - ???           $R | $LW
       $LW   55 - ???           $R | $LW
       $LW   56 - ???           $R | $LW
       $LW   57 - ???           $R | $LW
       $LW   58 - ???           $R | $LW
       $LW   59 - ???           $R | $LW
       $LW   60 - ???           $R | $LW
       $LW   61 - ???           $R | $LW
       $LW   62 - ???           $R | $LW
       $LW   63 - ???           $R | $LW
       $LW   64 - ???           $R | $LW
       $LW   65 - ???           $R | $LW
       $LW   66 - ???           $R | $LW
       $LW   67 - ???           $R | $LW
       $LW   68 - ???           $R | $LW
       $LW   69 - ???           $R | $LW
       $LW   70 - ???           $R | $LW
       $LW   71 - ???           $R | $LW
       $LW   72 - ???           $R | $LW
       $LW   73 - ???           $R | $LW
       $LW   74 - ???           $R | $LW
       $LW   75 - ???           $R | $LW
       $LW   76 - ???           $R | $LW
       $LW   77 - ???           $R | $LW
       $LW   78 - ???           $R | $LW
       $LW   79 - ???           $R | $LW
       $LW   80 - ???           $R | $LW
       $LW   81 - ???           $R | $LW
       $LW   82 - ???           $R | $LW
       $LW   83 - ???           $R | $LW
       $LW   84 - ???           $R | $LW
       $LW   85 - ???           $R | $LW
       $LW   86 - ???           $R | $LW
       $LW   87 - ???           $R | $LW
       $LW   88 - ???           $R | $LW
       $LW   89 - ???           $R | $LW
       $LW   90 - ???           $R | $LW
       $LW   91 - ???           $R | $LW
       $LW   92 - ???           $R | $LW
       $LW   93 - ???           $R | $LW
       $LW   94 - ???           $R | $LW
       $LW   95 - ???           $R | $LW"
echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Tools/Details$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  tools
}

viewmac () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Tools$R]
       $R└──╼ \$ 3"
  echo -e $LW"
       $LW   1 - eth0    $R | $LW `ethtool -P eth0 | cut -c 19-40`
       $LW   2 - wlan0   $R | $LW `ethtool -P wlan0 | cut -c 19-40`"
  echo -e $LW"
       $LW `ifconfig`

       $LW `route`"
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/view-MAC$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  clear
  lab
}

changemac () {
  clear
  banner
  maci=eth0
  macii=wlan0
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC$R]
       $R└──╼ \$ 4"
  echo -e $LW"
       $LW   1 - eth0    $R | $LW `ethtool -P eth0 | cut -c 19-40`
       $LW   2 - wlan0   $R | $LW `ethtool -P wlan0 | cut -c 19-40`
       $LW   3 - Other   $R |
       $LW   4 - Restar  $R |
       $LW   0 - Go back $R | "
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Change-MAC]
       └──╼ \$ " chma
  case "$chma" in
    1)
      echo -e $LW""
      ifconfig eth0 down
      macchanger -A eth0
      ifconfig eth0 up
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC/eth0$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      changemac
    ;;
    2)
      echo -e $LW""
      ifconfig wlan0 down
      macchanger -A wlan0
      ifconfig wlan0 up
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC/wlan0$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      changemac
    ;;
    3)
      read -p "              |
              └──╼ $ " chmca
      echo -e $LW""
      macchanger -A $chmca
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC/Other$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      changemac
    ;;
    4)
      changeiv
    ;;
    0)
      clear
      lab
    ;;
    *)
      changemac
    ;;
  esac
}

changeiv () {
  echo -e $LW""
  ifconfig wlan0 down
  ifconfig eth0 down
  macchanger -p wlan0
  echo ""
  macchanger -p eth0
  ifconfig wlan0 up
  ifconfig  eth0 up
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC/Restar$R]
       $R└──╼ \$ 4"
  echo -e $LW"
       $LW   1 - Other     $R |
       $LW   0 - Go back   $R |
  "
  read -p "       ┌──[$USER@`hostname`]─[/lab/Change-MAC/Restar]
       └──╼ \$ " chma2
  case "$chma2" in
    1)
    # Other
      read -p "              |
              └──╼ $ " chmca2
      echo -e $LW""
      ifconfig $chma2 down
      macchanger -p $chmca2
      ifconfig $chmca2 up
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Change-MAC/Restar$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      changemac
    ;;
    0)
    # Go back
      changemac
    ;;
    *)
      clear
      banner
      changeiv
  esac
}

metapt () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit$R]
       $R└──╼ \$ 5"
  echo -e "
       $LW   1 - Start msfconsole    $R | $LW 6 - Saved listener
       $LW   2 - Update msfconsole   $R | $LW 7 - Create payload
       $LW   3 - Findsploit          $R | $LW 0 - Go back
       $LW   4 - Armitage            $R |
       $LW   5 - Create listener     $R | $LW 99 - Exit"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Metasploit]
       └──╼ \$ " mts
  if [[ "$mts" = "1" ]]
    then
    service postgresql start
    msfconsole
  elif [[ "$mts" = "2" ]]
    then
    echo -e $LW ""
    sudo apt install metasploit-framework
    echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Update-msfconsole$R]
       $R└──╼ \$ $LW Press any key to go back"
    read -n 1
    metapt
  elif [[ "$mts" = "3" ]]
    then
    echo -e $R""
    read -p "       ┌──[Search]
       └──╼ \$ " fnd
    echo ""
    searchsploit $fnd
    echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Findsploit$R]
       $R└──╼ \$ $LW Press any key to go back"
    read -n 1
    metapt
  elif [[ "$mts" = "4" ]]
    then
    service postgresql start
    armitage
    echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Armitage$R]
       $R└──╼ \$ $LW Press any key to go back"
    read -n 1
    metapt
  elif [[ "$mts" = "5" ]]
    then
    ctrl1
  elif [[ "$mts" = "6" ]]
    then
    savedlistener
  elif [[ "$mts" = "7" ]]
    then
    bash data/payloads.sh
  elif [[ "$mts" = "0" ]]
    then
    clear
    lab
  elif [[ "$mts" = "99" ]]
    then
    clear
    exit
  else
    metapt
  fi
}

ctrl1 () {
echo -e $R""
read -p "       ┌──[LHOST]
       └──╼ \$ " ihst
echo ""
read -p "       ┌──[LPORT]
       └──╼ \$ " iprx
ctph
}

ctph () {
  echo -e "
       $LW   1 - Continue $R |
       $LW   0 - Go back  $R |

       $Y   ! - LHOST    $LY | $LW $ihst
       $Y   ! - LPORT    $LY | $LW $iprx"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Metasploit/Create-listener]
       └──╼ \$ " ctrl2
  if [[ "$ctrl2" = "1" ]]
    then
    echo -e $R"          |
          └──["$W"Default: "$LY"windows/meterpreter/reverse_tcp"$R"]"
    read -p "          |
          └──╼ $ " ctrap
    if [[ -z "$ctrap" ]]
      then
      echo -e $R"          |
          └──["$W"To selected: "$LY"windows/meterpreter/reverse_tcp"$R"]"
      ctrap="windows/meterpreter/reverse_tcp"
    fi
    echo -e $R""
    read -p "       ┌──[Name of listener]
       └──╼ \$ " ntls
    cd rc
    echo "use exploit/multi/handler" >> "$ntls".rc
    echo "set PAYLOAD $ctrap " >> "$ntls".rc
    echo "set LHOST $ihst " >> "$ntls".rc
    echo "set LPORT $iprx " >> "$ntls".rc
    echo "set ExitOnSession false" >> "$ntls".rc
    echo "exploit -j" >> "$ntls".rc
    echo -e $R""
    read -p "       ┌──[Launch the listener now?]-[Y/n]
       └──╼ \$ " ltln
    if [[ "$ltln" = "y" || "$ltln" = "Y" ]]
      then
      echo -e $LW""
      service postgresql start
      msfconsole -r "$ntls".rc
      cd ..
    else
      cd ..
      metapt
    fi
  elif [[ "$ctrl2" = "0" ]]
    then
    metapt
  else
    clear
    banner
    echo -e $LW"
Tool for Hacking
     Menu:
     $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Create-listener$R]
     $R└──╼ \$ 5"
    ctph
  fi
}

savedlistener () {
  echo -e "
       $LW   1 - Delete all saved listeners $R |
       $LW   2 - Select a saved listeners   $R |
       $LW   0 - Go back                    $R |"
  echo -e $R ""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Metasploit/Saved-listeners]
       └──╼ \$ "  sdls1
  case "$sdls1" in
    1)
      rm -f rc/*
      metapt
    ;;
    2)
      selectlist
    ;;
    0)
      metapt
    ;;
    *)
      clear
      banner
      echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Saved-listeners$R]
       $R└──╼ \$ 6"
      savedlistener
    ;;
  esac
}

selectlist () {
  echo ""
  echo -e $W"`ls --format=horizontal rc`"
  echo -e $R""
  read -p "       ┌──[Enter the name of the listener you want to select]
       └──╼ \$ " sdls2
  if [[ ! -f `pwd`/rc/"$sdls2" ]]
  then
      $sdls2="$sdls2".rc
      if [[ ! -f `pwd`/rc/"$sdls2" ]]
      then
          clear
          banner
          echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Saved-listener$R]
       $R└──╼ \$ 6"
          echo -e $Y"
        ! - File not found. Try again.. "
          sleep 0.5
          metapt
      fi
  fi
  startlist
}

startlist () {
  echo -e "
       $LW   1 - Start listener $R |
       $LW   0 - Go back        $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Metasploit/Saved-listener]
       └──╼ \$ "  sdls3
  case "$sdls3" in
    1)
      echo -e $LW""
      service postgresql start
      msfconsole -r `pwd`/rc/$sdls2
    ;;
    0)
      metapt
    ;;
    *)
      clear
      echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Metasploit/Saved-listeners$R]
       $R└──╼ \$ 6"
      startlist
    ;;
  esac
}

anonstop () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab$R]
       $R└──╼ \$ 6"
  echo ""
  anonsurf stop | head -n 11
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  clear
  lab
}

updte () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Updates$R]
       $R└──╼ \$ 7"
  echo -e "
       $LW   1 - Update         $R  | $LW 99 - Exit
       $LW   2 - Upgrade        $R  |
       $LW   3 - Update & Upgrade$R |
       $LW   4 - Lab Update      $R |
       $LW   0 - Go back         $R | "
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Updates]
       └──╼ \$ " upd
  case "$upd" in
    1)
      echo -e $R ""
      read -p "       ┌──[Do you want to start the update?]-[Y/n]
       └──╼ \$ " dpp1
      if [[ "$dpp1" = "Y" || "$dpp1" = "y" ]]
        then
        echo -e $LW ""
        sudo apt-get update
        sleep 1
        clear
        lab
      else
        updte
      fi
    ;;
    2)
      echo -e $R ""
      read -p "       ┌──[Do you want to start the upgrade?]-[Y/n]
       └──╼ \$ " dpp2
      if [[ "$dpp2" = "Y" || "$dpp2" = "y" ]]
        then
        echo -e $LW ""
        sudo apt-get dist-upgrade
        sleep 1
        clear
        lab
      else
        updte
      fi
    ;;
    3)
      echo -e $R ""
      read -p "       ┌──[Do you want to start the updata & upgrade?]-[Y/n]
       └──╼ \$ " dpp3
      if [[ "$dpp3" = "Y" || "$dpp3" = "y" ]]
        then
        echo -e $LW ""
        sudo apt-get update && apt-get dist-upgrade
        sleep 1
        clear
        lab
      else
        updte
      fi
    ;;
    4)
      echo ""
      echo -e $R "      ┌──["$B"Coming soon"$R"]
       └──╼ \$ "
      sleep 2
      updte
    ;;
    0)
      clear
      lab
    ;;
    99)
      clear
      exit
    ;;
    *)
      updte
    ;;
  esac
}

buycf () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Buy-me-a-coffe$R]
       $R└──╼ \$ 8"
  echo -e "
       $LW   1 - Bitcoin  $R  |
       $LW   2 - PayPal   $R  |
       $LW   0 - Go back  $R  |
       $LW   99 - Exit    $R  |  "
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Buy-me-a-coffe]
       └──╼ \$ " btc1
  case "$btc1" in
    1)
      echo ""
      echo -e $R "      ┌──["$B"Bitcoin"$R"]
       └──╼ \$$Y 32amerDLANarmCTZPFJGjt9MnuHmngPJMF6"
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Buy-me-a-coffe$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      buycf
    ;;
    2)
      echo ""
      echo -e $R "      ┌──["$B"Coming soon"$R"]
       └──╼ \$ "
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Buy-me-a-coffe$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      buycf
    ;;
    0)
      clear
      lab
    ;;
    99)
      clear
      exit
    ;;
    *)
      buycf
    ;;
  esac
}

menuii () {
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$B$PWD$R]
       $R└──╼ \$$LW

       $LW   1 - Information gathering $LR | $E$LW 6 - Recommended websites
       $LW   2 - Wireless testing      $LR | $E$LW 7 - Shortcuts
       $LW   3 - Password attacks      $LR | $E$LW 8 - Credits
       $LW   4 - Explotation tools     $LR | $E$LW 9 - Go back
       $LW   5 - Spoofing & sniffing   $LR | $E$LW 0 - Exit"
}

readerii () {
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab]
       └──╼ \$ " op1
  case "$op1" in
    1)
      infogathe
    ;;
    2)
      wirestest
    ;;
    3)
      paswatck
    ;;
    4)
      exptt
    ;;
    5)
      sposni
    ;;
    6)
      reweb
    ;;
    7)
      shorc
    ;;
    8)
      credit
    ;;
    9)
      clear
      lab
    ;;
    0)
      reset
      exit
    ;;
    help)
      echo""
    ;;
    -h)
      echo""
    ;;
    -o)
      echo
    ;;
    *)
      clear
      labii
    ;;
  esac
}

infogathe () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Information-gathering$R]
       $R└──╼ \$ 1"
  echo -e $LW"
       $LW   1 - Nmap       $R | $LW 6 - Crips
       $LW   2 - Maltego    $R | $LW 7 - WPScan
       $LW   3 - Doork      $R | $LW 8 - Infog
       $LW   4 - Host To IP $R | $LW 0 - Go back
       $LW   5 - Setoolkit  $R | $LW 99 - Exit"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Information-gathering]
       └──╼ \$ " ifgt1
  case "$ifgt1" in
    1)
      nmapig
    ;;
    2)
      echo -e $LW""
      maltego
      infogathe
    ;;
    3)
      doork
    ;;
    4)
      host2ip
    ;;
    5)
      clear
      setoolkit
      infogathe
    ;;
    6)
      cd Tools/Crips
      python crips.py
      cd ../..
      infogathe
    ;;
    7)
      wpsc4n
    ;;
    8)
      cd Tools/infog
      bash infog.sh
      cd ../..
      infogathe
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      infogathe
    ;;
  esac
}

nmapig () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Information-gathering/Nmap$R]
       $R└──╼ \$ 1"
  echo -e $LW"
       $LW   1 - Simple Scan      $R | $LY [-sV]
       $LW   2 - Port Scan        $R | $LY [-Pn]
       $LW   3 - System Detection $R | $LY [-A]
       $LW   4 - Custom           $R |
       $LW   0 - Go back          $R | "
       echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Information-gathering/Nmap]
       └──╼ \$ " nmapg1
  case "$nmapg1" in
    1)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " nmpsv
      echo -e $LW""
      nmap -sV -oN data/nmap-sV-`date +%Y-%M-%d_$H-%m-%S`.txt $nmpsv
      echo""
      echo -e $W"log Saved in `pwd`/data"
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Nmap$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      nmapig
    ;;
    2)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " nmppn
      echo -e $LW""
      nmap -Pn -oN data/nmap-Pn-`date +%Y-%M-%d_$H-%m-%S`.txt $nmppn
      echo""
      echo -e $W"log Saved in `pwd`/data"
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Nmap$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      nmapig
    ;;
    3)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " nmpa
      echo -e $LW""
      nmap -A -oN data/nmap-A-`date +%Y-%M-%d_$H-%m-%S`.txt $nmpa
      echo""
      echo -e $W"log Saved in `pwd`/data"
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Nmap$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      nmapig
    ;;
    4)
      echo -e $LW""
      sleep 0.5
      nmap -h
      sleep 1
      echo -e $R""
      read -p "       ┌──[$USER@`hostname`]─[/lab/Nmap]
       └──╼ \$ nmap" nmpct
      echo -e $LW""
      nmap $nmpct
      echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/Nmap$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      nmapig
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      nmapig
    ;;
  esac
}

 doork () {
  echo -e $R""
  read -p "       ┌──[Enter a Target]-['https://google.com']
       └──╼ \$ " dork
  echo -e $LW
  cd Tools/doork
  python2 doork.py -t $dork
  cd ../..
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Information-gathering/Doork$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  infogathe
}

host2ip () {
  echo -e $R""
  read -p "       ┌──[Enter a Host]
       └──╼ \$ " h2p
  echo -e $LW""
  host $h2p
  echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/Information-gathering/Host$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  infogathe
}

wpsc4n () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Information-gathering/WPScan$R]
       $R└──╼ \$ 7"
  echo -e $LW"
       $LW   1 - Username Enumeration $R | $LY [--enumerate u]
       $LW   2 - Plugin Enumeration   $R | $LY [--enumerate p]
       $LW   3 - All Enumerations     $R | $LY [--enumerate]
       $LW   4 - Custom               $R | $LY [-h] - Help
       $LW   0 - Go back              $R | "
       echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Information-gathering/WPScan]
       └──╼ \$ " wpsn
  case "$wpsn" in
    1)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " usere
      echo -e $LW""
      wpscan --url $usere --enumerate u
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/WPScan$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      wpsc4n
    ;;
    2)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " pluenu
      echo -e $LW""
      wpscan --url $pluenu --enumerate p
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/WPScan$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      wpsc4n
    ;;
    3)
      echo -e $R""
      read -p "       ┌──[Enter a Target]
       └──╼ \$ " allenu
      echo -e $LW""
      wpscan --url $allenu --enumerate
      echo -e $LW"
       $R┌──[$USER@`hostname`]─[$R/lab/WPScan$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      wpsc4n
    ;;
    4)
      echo -e $LW""
      sleep 1
      wpscan --h
      sleep 1
      echo -e $R""
      read -p "       ┌──[$USER@`hostname`]─[/lab/WPScan]
       └──╼ \$ wpscan" custwps
      echo -e $LW""
      wpscan $custwps
      echo -e "
       $R┌──[$USER@`hostname`]─[$R/lab/WPScan$R]
       $R└──╼ \$ $LW Press any key to go back"
      read -n 1
      wpsc4n
    ;;
    0)
      clear
      infogathe
    ;;
    *)
       wpsc4n
    ;;
  esac
}

wirestest () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Wireless-testing$R]
       $R└──╼ \$ 2"
  echo -e $LW"
       $LW   1 - Pixiewps           $R |
       $LW   2 - Reaver             $R |
       $LW   3 - Bluetooth Honeypot $R |
       $LW   0 - Go back            $R |
       $LW   99 - Exit              $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Wireless-testing]
       └──╼ \$ " wirle1
  case "$wirle1" in
    1)
      clear
    ;;
    2)
      clear
    ;;
    3)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      wirestest
    ;;
  esac
}

paswatck () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Password-attacks$R]
       $R└──╼ \$ 3"
  echo -e $LW"
       $LW   1 - Cupp      $R | $LW 0 - Go back
       $LW   2 - John      $R | $LW 99 - Exit
       $LW   3 - BruteX    $R |
       $LW   4 - Medusa    $R |
       $LW   5 - Hydra     $R | "
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Password-attacks]
       └──╼ \$ " pasw1
  case "$pasw1" in
    1)
      clear
    ;;
    2)
      clear
    ;;
    3)
      clear
    ;;
    4)
      clear
    ;;
    5)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      paswatck
    ;;
  esac
}

exptt () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Explotation-tools$R]
       $R└──╼ \$ 4"
  echo -e $LW"
       $LW   1 - SQLmap         $R | $LW 0 - Go back
       $LW   2 - Shellnoob      $R | $LW 99 - Exit
       $LW   3 - Commix         $R |
       $LW   4 - JBoss-Autopwn  $R |
       $LW   5 - ATSCAN         $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Explotation-tools]
       └──╼ \$ " expt1
  case "$expt1" in
    1)
      clear
    ;;
    2)
      clear
    ;;
    3)
      clear
    ;;
    4)
      clear
    ;;
    5)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      exptt
    ;;
  esac
}

sposni () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Sniffing-&-Spoofing$R]
       $R└──╼ \$ 5"
  echo -e $LW"
       $LW   1 - SEToolkit    $R | $LW 0 - Go back
       $LW   2 - SSLtrip      $R | $LW 99 - Exit
       $LW   3 - SMTP Mailer  $R |
       $LW   4 - DNSCAP       $R |
       $LW   5 - PyPHISER     $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Sniffing-&-Spoofing]
       └──╼ \$ " snif1
  case "$snif1" in
    1)
      clear
      setoolkit
    ;;
    2)
      clear
    ;;
    3)
      clear
    ;;
    4)
      clear
    ;;
    5)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      sposni
    ;;
  esac
}

reweb () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Recomended-websites$R]
       $R└──╼ \$ 6"
  echo -e $LW"
       $LW   1 - Whois       $R | $LW 0 - Go back
       $LW   2 - Netcraft    $R | $LW 99 - Exit
       $LW   3 - Attack Map  $R |
       $LW   4 - ViewDNS     $R |
       $LW   5 - Robtex      $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Recomended-websites]
       └──╼ \$ " reweb1
  case "$reweb1" in
    1)
      clear
    ;;
    2)
      clear
    ;;
    3)
      clear
    ;;
    4)
      clear
    ;;
    5)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      reweb
    ;;
  esac
}

shorc () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Shortcuts$R]
       $R└──╼ \$ 7"
  echo -e $LW"
       $LW   1 - Programing      $R |
       $LW   2 - Start services  $R |
       $LW   3 - Geolocate an IP $R |
       $LW   0 - Go back         $R |
       $LW   99 - Exit           $R |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Shortcuts]
       └──╼ \$ " shor1
  case "$shor1" in
    1)
      clear
    ;;
    3)
      read -p "IP >>" geo
      geoip $geo
      ;;
    2)
      clear
    ;;
    0)
      clear
      labii
    ;;
    99)
      reset
      exit
    ;;
    *)
      shorc
    ;;
  esac
}

credit () {
  clear
  banner
  echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R/lab/Credits$R]
       $R└──╼ \$ 8"
  echo -e $LW"
       $LW   1 - Kian_A  $R | $LW Programing Tools"
  echo -e $R"
       $R┌──[$USER@`hostname`]─[$R/lab/Credits$R]
       $R└──╼ \$ $LW Press any key to go back"
  read -n 1
  clear
  labii
}

banner () {
  echo
  echo -e $W"                                ""Script"$E
  echo -e $R"    ██▓    ▄▄▄       ▄▄▄▄      "$E$W" By:"$E$R" SHADY H"$E
  echo -e $R"   ▓██▒   ▒████▄    ▓█████▄    "$E$W" Version:"$E$LW" v0.0.4"$E
  echo -e $R"   ▒██░   ▒██  ▀█▄  ▒██▒ ▄██   "$E$W" Twitter: "$LW"@ShaddiH1"$E
  echo -e $R"   ▒██░   ░██▄▄▄▄██ ▒██░█▀     "$E$W" IP:"$E$LR" `wget -qO- myexternalip.com/raw`"
  echo -e $R"   ░██████▒▓█   ▓██▒░▓█  ▀█▓   "$E$W" Local IP:"$E$LR" `hostname -I | cut -d " " -f 1` "$E
  echo -e $R"   ░ ▒░▓  ░▒▒   ▓▒█░░▒▓███▀▒   "$E$W" Anonsurf:"$E$LW" `service tor@Default status | head -3 | tail -1 | cut -c 12-26`"
  echo -e $R"   ░ ░ ▒  ░ ▒   ▒▒ ░▒░▒   ░    "$E$W" Tools:"$E$Y" ● "$W"Root:`./root.sh`"
  echo -e $R"     ░ ░    ░   ▒    ░    ░    "$E$W" Os:"$E$LW" `lsb_release -sd` "
  echo -e $R"       ░  ░     ░  ░ ░         "$E$W" Kernel:"$E$LW" `uname -mrs`"
  echo -e $R"                          ░    "$E$W" Shell:"$E$LW" `bash --version | head -1 | cut -d ' ' -f 4`"
}

lab () {
  banner
  menu
  reader
}

labii () {
  banner
  menuii
  readerii
}

lab
