#
# using the function in shell
#

say () {

    # Color codes
    RED="\033[0;31m"
    GREEN="\033[0;32m"
    CYAN="\033[0;36m"
    YELLOW="\033[1;33m"
    NC="\033[0m"

    case $1 in
        "-i") echo -e "${GREEN}INFO:: ${2}";;
        "-d") echo -e "${YELLOW}DEBUG:: ${2}";;
        "-w") echo -e "${CYAN}WARN:: ${2}";;
        "-e") echo -e "${RED}ERROR:: ${2}";;
    esac 
}
say $1 $2