#!/usr/bin/env bash

# This example is to show you what shift command does in Bash
# Run `./1.bash_shift.sh a b c d` or any arbitrary number of arguments you would like to pass in.

RED='\033[1;31m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m' # No Color
DIM='\033[2m'

if [ "$#" -lt 1 ]; then
  echo -e "${RED}No options provided. Try running \`./bash_shift.sh a b c d\` ."
  exit 1
fi

echo -e "${BLUE}Printing each argument one at a time ...${YELLOW}"
while [ -n "$1" ]
do
  echo -e "Current \$1: ${RED} $1"
  echo -e "${DIM}${YELLOW}\tshifting variables ... ${NO_COLOR}${YELLOW}"
  shift
done
echo -ne "${BLUE}"

if [ -z "$1" ];then
  echo '$1 is now blank'
else
  echo 'Unexpected. $1 is not blank'
fi
