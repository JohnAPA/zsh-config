#!/bin/bash


  if [[ -z $1 ]]; then echo -n "Enter Domain Name: " && read DOMAIN 
    USERNAME=${DOMAIN%.*}
  else
    DOMAIN=$1 
    USERNAME=${DOMAIN%.*}
  fi

  if [[ -z $2 ]]; then echo -n "Assign Port: " && read PORT
  else
    PORT=$2
  fi

  echo "----------------"
  echo "Domain: $DOMAIN"
  echo "Port: $PORT"
  read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
  echo "----------------"
  
  echo "-Don't Forget to first make an A-Record for the domain."
  echo "-Change the port and make app listen on express once installed"
  echo "-Change to the selected port on the nginx file"
  
  test-a-record $DOMAIN
  if [[ "$(test-a-record $DOMAIN)" == "No A-Record" ]]; then
    echo "No A-Record found for $DOMAIN"
    echo "To make one go to: https://cloud.digitalocean.com/networking/domains/empa.app?i=6b2adc"
    exit 1
  fi





  create-server-dir $1
  read -p "Did you make an A-Record for $1? " -n 1 -r
  echo
  if [[ ! $REPLY =~ ^[Yy]$ ]]
  then
    exit 1
  else 
    create-server-ssl $1
  fi

  


