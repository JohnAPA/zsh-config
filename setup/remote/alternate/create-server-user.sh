#!/bin/bash

  INPUT=$1
  USERNAME=$($INPUT|tail -c +2)
  echo $USERNAME

  getent passwd $1
  
  if [[ $(getent passwd $1) == "" ]]; then echo "no username found"

  fi
