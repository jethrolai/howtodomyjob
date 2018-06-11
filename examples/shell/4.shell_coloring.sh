#!/usr/bin/env bash

# This example is to show you what shift command does in Bash
# Run `./4.shell_coloring.sh`

## see ./examples/shell/utils.sh for more color codes

NO_COLOR='\033[0m'
BLACK='\033[0;30m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
BOLD_BLUE='\033[1;34m'
BOLD_PURPLE='\033[1;35m'
UNDERLINE_RED='\033[4;31m'
UNDERLINE_GREEN='\033[4;32m'
BACKGROUND_WHITE='\033[47m'
INTENSE_PURPLE='\033[0;95m'

echo -e "\n${RED}RED ${NO_COLOR}NO_COLOR ${GREEN}GREEN ${YELLOW}YELLOW ${BLUE}BLUE ${BOLD_BLUE}BOLD_BLUE ${UNDERLINE_RED}UNDERLINE_RED ${GREEN}GREEN ${BLACK}${BACKGROUND_WHITE}BACKGROUND_WHITE ${INTENSE_PURPLE}INTENSE_PURPLE"
echo -e "If you print an additional line, the effect remaind, unless you reset it with ${NO_COLOR}NO_COLOR, and everything after this will have no color\n"

exit 0
