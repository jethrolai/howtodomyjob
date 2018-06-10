#!/usr/bin/env bash

# This example is to show you what shift command does in Bash
# Run `./3.shell_spinning.sh {optional. number of iterations} {optional. refresh rate}`

source ./*/utils.sh

declare -r DEFAULT_REFRESH_RATE=0.5 # seconds
declare -r -i DEFAULT_ITERATIONS=5

set_default_rate() {
  echo -e "${YELLOW}Invalid Input! Set refresh rate to default $DEFAULT_REFRESH_RATE"
  refresh_rate=$DEFAULT_REFRESH_RATE
}

eval_refersh_rate() {
  if [ -z ${1+x} ]; then
    set_default_rate
  else
    check_positive_float $1
    local result=`echo $?`
    if [ "$result" -eq 1 ];then
      refresh_rate=$1
    else
      set_default_rate
    fi
  fi
}

if [ "$#" -gt 0 ];then
  if [ "$1" -eq "$1" 2>/dev/null ]; then
    iterations=$1
  else
    echo -e "${YELLOW}Invalid Input! Set total ierations to default $DEFAULT_ITERATIONS"
    iterations=$DEFAULT_ITERATIONS
  fi
  eval_refersh_rate $2
else
  echo -e "${YELLOW}Set total ierations to default $DEFAULT_ITERATIONS"
  echo -e "${YELLOW}Set refresh rate    to default $DEFAULT_REFRESH_RATE"
  iterations=$DEFAULT_ITERATIONS
  refresh_rate=$DEFAULT_REFRESH_RATE
fi
echo -e "${INTENSE_BLUE}Total iterations: ${INTENSE_CYAN}${iterations}${INTENSE_BLUE} "
echo -e "Refresh rate: ${INTENSE_CYAN}${refresh_rate} "
echo -e "${BOLD_INTENSE_PURPLE}=================================="

spin() {
  local -a marks=( '/' '-' '\' '|' )
  for i in $(seq 0 3)
  do
    display=""
    printf '%s\r' " ${marks[i++ % ${#marks[@]}]}" $display
    display2="${INTENSE_BLUE}Current iteration: ${INTENSE_CYAN}${1}${BOLD_INTENSE_YELLOW}"
    printf "$display2 :$display"
    sleep $refresh_rate
  done
}

for i in $(seq 1 $iterations)
do
  spin $i
done
echo -e
