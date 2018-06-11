#!/usr/bin/env bash

# This example is to show you what shift command does in Bash
# Run `./2.shell_progress_bar.sh {optional: number of iterations}`
# TODO: make the main logic a function for future import

RED='\033[1;31m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NO_COLOR='\033[0m' # No Color
DIM='\033[2m'
LIGHT='\033[1m'
REFRESH_RATE=0.05 # seconds
DEFAULT_ITERATIONS=5

if [ "$#" = 1 ];then
  if [ "$1" -eq "$1" 2>/dev/null ]; then
    iterations=$1
  else
    echo -e "${RED}Invalid Input! Set ierations to go to default $DEFAULT_ITERATIONS"
    iterations=$DEFAULT_ITERATIONS
  fi
else
  echo -e "${YELLOW}Set ierations to go to default $DEFAULT_ITERATIONS"
  iterations=5
fi
echo -e "${BLUE}Iterations to go: ${RED}${iterations}${NO_COLOR}"

MARKS=""
for i in $(seq 0 50)
  do
    MARKS="${MARKS}#"
  done
echo -ne "${YELLOW}"

progressBar=""
declare -i currentIteration=1
while [[ $currentIteration -lt $iterations || $currentIteration -eq $iterations ]]
do
  for i in $(seq 0 50)
  do
    current=$((i*2))
    printf "[%-50.${i}s] " "$MARKS" $progressBar
    percentage=""
    printf "(%3.3s%%)" "$current" $percentage
    printf "${progressBar}${percentage} iteration: $currentIteration\r"
    sleep $REFRESH_RATE
  done
  currentIteration=`expr $currentIteration + 1`
done
# clean up screen
echo -e ""
exit 0
