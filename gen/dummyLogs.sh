#!/bin/bash

while true
do
  ran=$(cat /dev/urandom | tr -dc '1-9' | fold -w 256 | head -n 1 | head --bytes 1)
  # ran=$((1 + RANDOM % 3))
  if [ $ran = 1 ]; then
    echo '[error] This is an error'
  elif [ $ran -gt 1 ] &&  [ $ran  -lt 5 ]; then
    echo '[warn] This is a warning'
  else
    echo '[info] This is an information'
  fi
  # echo ran
done
