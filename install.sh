#!/bin/bash
#Instalation of Lab
reset
#Colors
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

function Banner {
  echo -e $LW"
                      _____         _       _ _
                     |     |___ ___| |_ ___| | |___ ___
                     |-   -|   |_ -|  _| .'| | | -_|  _|
                     |_____|_|_|___|_| |__,|_|_|___|_|

                        $W  Installer of Lab 0.0.4
                    $LW   Created by:$R SHADY H & KIAN A
  "
}
function QUES {
echo -e $W"Press $R""any key $W""to start"
read -n 1
echo -e $W"
     This tool is only for $R""ethical and educational purposes only$W.
     Use this tool only on your own network and never without permission.
     $R""I am not responsible for anything you do with this tool$W.
     Will you use this tool only on your own network and
     only with your own responsibility?-[YES/NO]"
echo -e $W""
read -p "     ┌──[$USER@`hostname`]─[`pwd`]
     └──╼ \$ " arm
if [[ "$arm" == "YES" ]]
  then
    clear
    BNRI
elif [[ "$arm" == "NO" ]]
  then
    reset
    cd
    exit
else
  clear
  QUES
fi
}
function START {
  W="id -u"
  sleep 1
  if [[ "$W" != "0" ]]
  then
  echo -e $LG "                    [ ✔︎ ] - [ User ] - Root "
  else
  echo -e $R "                     [ ! ] - [ User ] - You are not root"
  sleep 2
  clear
  exit
  fi
  sleep 1
  if ! hash wich xterm >/dev/null 2>&1
  then
    echo -e $LG "                    [ ✔︎ ] - [ Xterm ] - Found"
  else
    echo -e $R "                     [ ! ] - [ Xterm ] - Not found"
  fi
sudo apt update -y &>> install.log
sudo apt upgrade -y &>> install.log
sudo apt full-upgrade -y &>> install.log
  echo -e $LG "                    [ ✔︎ ] - [ Update & Upgrade ] - Found"
  sleep 1
  if ! hash wget 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Wget ] - Not found"
   sudo apt-get install wget -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Wget ] - Found"
  fi
  sleep 1
  if ! hash git 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Git ] - Not found"
   sudo apt-get install git -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Git ] - Found"
  fi
  sleep 1
  if ! hash netdiscover 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Netdiscover ] - Not found"
    sudo apt-get install netdiscover -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Netdiscover ] - Found"
  fi
  sleep 1
  if ! hash websploit 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Websploit ] - Not found"
    sudo apt-get install websploit -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Websploit ] - Found "
  fi
  sleep 1
  if ! hash ghost-phisher >/dev/null
  then
    echo -e $R "                    [ ! ] - [ Ghost-Phisher ] - Not found"
   sudo apt-get install ghost-phisher -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Ghost-Phisher ] - Found"
  fi
  sleep 1
  if ! hash beef-xss >/dev/null
  then
    echo -e $R "                    [ ! ] - [ Beef ] - Not found"
    sudo apt-get install beef -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Beef ] - Found"
  fi
  sleep 1
  if ! hash cupp 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Cupp ] - Not found"
    sudo apt-get install cupp -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Cupp ] - Found"
  fi
  sleep 1
  if ! hash sqlmap 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Sqlmap ] - Not found"
    sudo apt-get install sqlmap -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Sqlmap ] - Found"
  fi
  sleep 1
  if ! hash shellter 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Shellter ] - Not found"
    sudo apt-get install shellter -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Shellter ] - Found"
  fi
  sleep 1
  if ! hash wpscan 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Wpscan ] - Not found"
    sudo apt-get install wpscan -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Wpscan ] - Found"
  fi
  sleep 1
  if ! hash patator 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Patator ] - Not found"
    sudo apt-get install patator -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Patator ] - Found"
  fi
  sleep 1
  if ! hash burpsuite 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Burpsuite ] - Not found"
    sudo apt-get install burpsuite -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Burpsuite ] - Found"
  fi
  sleep 1
  if ! hash aircrack-ng 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Aircrack-ng ] - Not found"
    sudo apt-get install aircrack-ng -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Aircrack-ng ] - Found"
  fi
  sleep 1
  if ! hash bettercap 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Bettercap ] - Not found"
    sudo apt-get install bettercap -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Bettercap ] - Found"
  fi
  sleep 1
  if ! hash msfconsole 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Metasploit-framework ] - Not found"
   sudo apt-get install metasploit-framework -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Metasploit-framework ] - Found"
  fi
  sleep 1
  if ! hash maltego 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Maltego ] - Not found"
    sudo apt-get install maltego -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Maltego ] - Found"
  fi
  sleep 1
  if ! hash john 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ john ] - Not found "
    sudo apt-get install john -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ john ] - Found"
  fi
  sleep 1
  if ! hash johnny 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ johnny ] - Not found"
    sudo apt-get install johnny -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ johnny ] - Found"
  fi
  sleep 1
  if ! hash medusa 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Medusa ] - Not found"
    sudo apt-get install medusa -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Medusa ] - Found"
  fi
  sleep 1
  if ! hash hydra 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Hydra ] - Not found"
    sudo atp-get install hydra -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Hydra ] - Found"
  fi
  sleep 1
  if ! hash golismero 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Golismero ] - Not found"
    sudo apt-get install golismero -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Golismero ] - Found"
  fi
  sleep 1
  if ! hash wireshark 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Wireshark ] - Not found"
    sudo apt-get install wireshark -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Wireshark ] - Found"
  fi
  sleep 1
  if ! hash nikto 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Nikto ] - Not found"
    sudo apt-get install nikto -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Nikto ] - Found"
  fi
  sleep 1
  if ! hash nmap 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Nmap ] - Not found"
    sudo apt-get install nmap -y &>> install.log
  else
    echo -e $LG "                    [ ✔︎ ] - [ Nmap ] - Found"
  fi
}
function PROG {
  chmod +x Lab.sh
  mkdir rc
  mkdir Tools
  cd Tools
  if ! hash anonsurf 2>/dev/null
  then
    echo -e $R "                    [ ! ] - [ Anonsurf ] - Not found"$LW
    sudo git clone https://github.com/Und3rf10w/kali-anonsurf.git
    cd kali-anonsurf
    chmod +x ./installer.sh
    sudo ./installer.sh
    cd ..
  else
    echo -e $LG "                    [ ✔︎ ] - [ Anonsurf ] - Found"
  fi
  echo ""
  cd ..
}
function delay()
{
    sleep 0.5
}
CURRENT_PROGRESS=0
function P()
{
    PARAM_PROGRESS=$1;
    PARAM_PHASE=$2;

    if [ $CURRENT_PROGRESS -le 0 -a $PARAM_PROGRESS -ge 0 ]  ; then echo -ne "                  [..........................] (0%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 5 -a $PARAM_PROGRESS -ge 5 ]  ; then echo -ne "                  [#.........................] (5%)  $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 10 -a $PARAM_PROGRESS -ge 10 ]; then echo -ne "                  [##........................] (10%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 15 -a $PARAM_PROGRESS -ge 15 ]; then echo -ne "                  [###.......................] (15%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 20 -a $PARAM_PROGRESS -ge 20 ]; then echo -ne "                  [####......................] (20%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 25 -a $PARAM_PROGRESS -ge 25 ]; then echo -ne "                  [#####.....................] (25%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 30 -a $PARAM_PROGRESS -ge 30 ]; then echo -ne "                  [######....................] (30%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 35 -a $PARAM_PROGRESS -ge 35 ]; then echo -ne "                  [#######...................] (35%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 40 -a $PARAM_PROGRESS -ge 40 ]; then echo -ne "                  [########..................] (40%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 45 -a $PARAM_PROGRESS -ge 45 ]; then echo -ne "                  [#########.................] (45%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 50 -a $PARAM_PROGRESS -ge 50 ]; then echo -ne "                  [##########................] (50%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 55 -a $PARAM_PROGRESS -ge 55 ]; then echo -ne "                  [###########...............] (55%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 60 -a $PARAM_PROGRESS -ge 60 ]; then echo -ne "                  [############..............] (60%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 65 -a $PARAM_PROGRESS -ge 65 ]; then echo -ne "                  [#############.............] (65%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 70 -a $PARAM_PROGRESS -ge 70 ]; then echo -ne "                  [###############...........] (70%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 75 -a $PARAM_PROGRESS -ge 75 ]; then echo -ne "                  [#################.........] (75%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 80 -a $PARAM_PROGRESS -ge 80 ]; then echo -ne "                  [####################......] (80%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 85 -a $PARAM_PROGRESS -ge 85 ]; then echo -ne "                  [#######################...] (85%) $PARAM_PHASE \r"  ; delay; fi;
    if [ $CURRENT_PROGRESS -le 90 -a $PARAM_PROGRESS -ge 90 ]; then echo -ne "                  [##########################] (100%) $PARAM_PHASE \r" ; delay; fi;
    if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo -ne '                       Done!                                            \n' ; delay; fi;

    CURRENT_PROGRESS=$PARAM_PROGRESS;

}
function BNRI {
Banner
START
PROG
echo -e $R "                        Please wait a few seconds"$LG
echo
P 10 "Initialize"
P 20 "Phase 1   "
P 40 "Phase 2   "
P 60 "Phase 3   "
P 80 "Wait..."
P 90 "Wait..."
P 100 "Done     "
./Lab.sh
}
######################
function reinstall {
  echo -e $R ""
  read -p "     ┌──[Do you want to reinstall Lab?]-[Y/n]
     └──╼ \$ " r
  if [[ "$r" = "y" || "$r" = "Y" ]]
  then
    echo "Wait..."
    apt install netdiscover --reinstall
  else
    sleep 2
    echo $R"Abort"$E
    ./Lab.sh
  fi
}
if [ "$1" == "reinstall" ]
then
  reinstall
fi

QUES
BNRI
