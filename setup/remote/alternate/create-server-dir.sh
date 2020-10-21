#!/bin/bash

   DOMAIN=$1
   mkdir -p /var/www/$DOMAIN/html
   chown -R  $USER:$USER /var/www/$DOMAIN/html
   chmod -R 755 /var/www/$DOMAIN
   echo "<html>
    <head>
        <title>[HTTP] Welcome to step 1 of setup!</title>
    </head>
    <body>
        <h1>Step 1 complete: HTTP Route is working for $DOMAIN</h1>
    </body>
</html>">>/var/www/$DOMAIN/html/index.html

   echo "server {
        listen 80;
        listen [::]:80;

        root /var/www/$DOMAIN/html;
        index index.html index.htm index.nginx-debian.html;

        server_name $DOMAIN www.$DOMAIN;

        location / {
                try_files $uri $uri/ =404;
        }
}">>/etc/nginx/sites-available/$DOMAIN

ln -s /etc/nginx/sites-available/$DOMAIN /etc/nginx/sites-enabled/

echo "Successfully Created NGINX directories for $DOMAIN"
echo "  -To create ssl type in cmd create-server-ssl $DOMAIN-->$cmd$create-server-ssl $DOMAIN"



function create-server-ssl(){
DOMAIN=$1
rm -r /var/www/$DOMAIN
ln -s /home/$DOMAIN/ /var/www/html
echo "Successfully replaced var/www/$DOMAIN/html to a dynamic directory to @home/$DOMAIN"

sudo certbot --nginx -d $DOMAIN -d www.$DOMAIN
#systemctl status certbot.timer
sudo certbot renew --dry-run
}