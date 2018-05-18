#!/bin/bash
# ========================================================================================================
# title          : rename.sh
# description    : This script will rename all the files recursively within the main folder replacing
#                : the from variable with the to variable.  Otherwise the file will be the same and the
#                : mv command will fail gracefully, but the script will continue to run
# license        : GPLv3
# author         : Cory Hilliard
# date           : 2018.05.18
# version        : 1.0   
# usage          : bash rename.sh
# ========================================================================================================

# vaiable to take the previous semester code
from=2018W

# vaiable for the current semester code 
to=2018F

for file in ./*/*; do
  file2=$(echo ${file} | sed "s/${from}/${to}/g")
  mv ${file} ${file2}
  # echo ${file2}
done
