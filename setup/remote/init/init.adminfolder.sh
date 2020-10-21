#!/bin/bash

cd /admin
ln -s /usr/bin/ bin 
ln -s /usr/local/bin/ local.bin
ln -s /etc/nginx nginx
ln -s /etc/nginx/sites-available nginx.sites
ln -s /home/ home
ln -s /persistent_bin p.bin 
ln -s /root/.zshrc /admin/.zshrc
ln -s /var/log/nginx/ logs
ln -s /var/www/empa.app/html/ www-empa
ln -s /var/www/api.empa.app/html/ www-api
ln -s /var/www/amion.empa.app/html/ www-amion

echo "Admin Directory Filled"


