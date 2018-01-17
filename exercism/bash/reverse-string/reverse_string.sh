#!/bin/bash

set -eu

if [[ "$#" -eq 0 ]]; then
  echo "Usage: ./$0 <string>"
  exit 1
fi

reverse_string () {
  local rts=""
  for (( i="${#1}"-1 ; i >= 0 ; i-- )); do
    rts+="${1:i:1}"
  done
  echo "${rts}"
  exit 0
}

reverse_string "$1"
