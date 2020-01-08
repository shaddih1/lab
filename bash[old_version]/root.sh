#!/usr/bin/env bash

# Colors

#red
    R="\e[1;31m"
#green
    G="\e[1;32m"
#end
    E="\e[1;0m"

# Root

x="id -u"

if [[ "$x" != "0" ]] ; then
  echo -e $G "●" $E
else
  echo -e $R "●" $E
fi
