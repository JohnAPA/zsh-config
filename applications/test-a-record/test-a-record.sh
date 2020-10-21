#!/bin/bash

# $ test.a-record.sh <domain>
# ----------------------------

  DOMAIN=$1
  CMD="$(host $1)"
  NOTFOUND='not found'
  FOUND='has address'
  if [[ "$CMD" == *"$NOTFOUND"* ]]; then
      echo "No A-Record"
    else 
    if [[ "$CMD" == *"$FOUND"* ]]; then
      echo "A-Record Found"
    fi
  fi
# ----------------------------