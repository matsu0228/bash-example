#!/bin/bash

function usage_exit() {
  echo -e "
  Usage: $0 [-t TERM] PARAM \"param2-1 param2-2\" 
      (warning: flag arguments must come before positional arguments)
      
      explain this batch here

  " 1>&2
  exit 1
}

function set_color(){
  echo -e "$1"
}
COLOR_RED='\033[0;31m'
COLOR_END='\033[0m'

while getopts "t:h" OPT
do
  case $OPT in
    t)  OPT_TERM=${OPTARG}
      ;;
    *) usage_exit
      ;;
  esac
done
shift $((OPTIND - 1))

OPT_FOR_PY=""
# validate OPTS
TERM_LIST=("month" "week")
if [ -z "${OPT_TERM}" ]; then
  set_color ${COLOR_RED}
  echo -e "you didn't set term option."
  set_color ${COLOR_END}
  usage_exit
elif ! `echo ${TERM_LIST[@]} | grep -q "${OPT_TERM}"`; then
  term_list="$(IFS=' '; echo "${TERM_LIST[*]}")"
  set_color ${COLOR_RED}
  echo -e "ERROR: you must choose term param in following list.
            list:  ${term_list}"
  set_color ${COLOR_END}
  usage_exit
else
  OPT_FOR_PY="-t ${OPT_TERM}"
fi

echo -e "exec with following params:
      PARAM1: $1
      PARAM2: $2
      option: ${OPT_FOR_PY}
      "
# end option handling -------------------------------------

#
# do something here
#

# # when PARAM2 == empty
# if [ -z "$2" ]; then
#
# fi

