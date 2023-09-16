#!/bin/zsh

CMD="/usr/local/bin/code"

if [[ $# -eq 4 ]]; then
  #Invoked as merge tool
  "$CMD" --wait "$4"
elif [[ $# -eq 2 ]]; then
  #Invoked as diff tool
  "$CMD" --wait --diff "$1" "$2"
else
  #Error
  echo "Number of arguments must be 4 or 2."
fi