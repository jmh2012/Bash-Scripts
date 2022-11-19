#!/bin/bash
# usage: hex.sh [-d decimal number] [-h hexidecimal number]
while getopts 'dh:' OPTION; do
  case "$OPTION" in
    d)
      printf '%x\n' $2
      ;;
    h)
      printf '%d\n' $((16#$2))
      ;;
  esac
done
