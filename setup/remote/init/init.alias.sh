#!/bin/bash 

omzsh="~/.oh-my-zsh"
mkdir ~/.oh-my-zsh/custom/alias
mkdir ~/.oh-my-zsh/custom/functions
mkdir ~/.oh-my-zsh/custom/completions

touch "$omzsh/alias.zsh"
touch "$omzsh/functions.zsh"
touch "$omzsh/variables.zsh"
touch "$omzsh/newFunctions.zsh"

AD="$omzsh/alias.zsh"

echo '
# --------------------------------------------------
# Aliases
#---------------------------------------------------
'
echo '# Util --------------------------------------------
alias rst="source ~/.zshrc"
alias clr="clear"

alias backup="cp {,.bak}"
alias backup.isoriginal="cp {,.original.bak}""
alias bg="backup"
alias create-user="adduser $1 && usermod -aG sudo $1"
alias lockfile.log="sub /var/log/root/command-lock.txt"
'>>$AD

echo '# IP ADDRESS ---------------------------------------
alias ip.pvt="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip.pub="curl http://icanhazip.com"
'>>$AD

echo '# Servers -----------------------------------------
alias empa="sudo -u empa $1"
alias empa.status="cd /home/empa && sudo -u empa pm2 status"
alias empa.restart="cd /home/empa && sudo -u empa pm2 restart empa.js --watch"
alias empa.monit="cd /home/empa && sudo -u empa pm2 monit"

alias api="sudo -u api $1"
alias api.start="cd /home/api && sudo -u api pm2 start api.js --watch"
alias api.status="cd /home/api && sudo -u api pm2 status"
alias api.restart="cd /home/api && sudo -u api pm2 restart api.js --watch"
alias api.monit="cd /home/api && sudo -u api pm2 monit"

alias amion="sudo -u amion $1"
alias amion.status="cd /home/amion && sudo -u amion pm2 status"
alias amion.restart="cd /home/amion && sudo -u amion pm2 restart amion.js --watch"
alias amion.monit="cd /home/amion && sudo -u amion pm2 monit"

alias dev="sudo -u test $1"
alias dev.status="cd /home/test && sudo -u test pm2 status"
alias dev.restart="cd /home/test && sudo -u test pm2 restart ./www --watch"
alias dev.monit="cd /home/test && sudo -u test pm2 monit"
alias dev.start="cd /home/test && sudo -u test pm2 start ./www"
alias dev.start.dev="cd /home/test && sudo -u test pm2 start app.js --watch"
alias dev.stop="cd /home/test && sudo -u test pm2 stop www"
'>>$AD

echo '# NGINX -------------------------------------------
alias nginx.restart="systemctl restart nginx"
alias nginx.reload="systemctl restart nginx"
alias nginx.refresh="systemctl restart nginx"
alias nginx.test="sudo nginx -t"
alias test.something="curl -I $1"
alias test.contents="curl -i $1"
   
            # -------------------------------------
            alias nx.rl="nginx.reload"
            alias nr="nginx.restart"
'>>$AD

echo '# NGINX Specific ----------------------------------
function nginx.status(){
   CMD=$(systemctl status nginx.service)
   echo -e $CMD | grep "Active" | awk '{print "Server[Digio]: "  $2 $3}'
   echo "IP Address   :  $(ip.pvt)"
}'>>$AD

echo '# Port --------------------------------------------
alias info.port="sudo ufw status verbose"
alias port.info.app="sudo ufw app list"
alias port.info="sudo ufw status verbose"
alias port.firewall="sudo ufw status && sudo ufw numbered"

alias port.open="sudo ufw allow $1"
alias port.open.strict="sudo ufw allow from 71.172.140.13 to any port $1"
'>>$AD


echo '# Directory ---------------------------------------
alias dir.empa="/home/empa/"
alias dir.empa.views="/home/empa/views/"
alias dir.empa.public="/home/empa/public"

alias dir.amion="/home/amion/"
alias dir.emedx="/home/emedx/"
alias dir.test="/home/test/"

alias dir.nginx="/etc/nginx/"
alias dir.nginx.log="/var/log/nginx/"

alias dir.omzsh="/root/.oh-my-zsh/"
alias dir.ssh="/root/.ssh/"
alias dir.sublime="/root.sublime/"
alias dir.pm2="/root.pm2/"
'>>$AD

echo '# NPM Commands ------------------
alias npmr='npm run'
alias npmi='npm install --save '
# ----------------'

echo '# Sublime / Workspace ------------------------------
alias sub="rsub"
alias sbl="rsub"
alias open="rsub"
alias workspace="rsub --project ~/sublime/server.sublime-project"
'>>$AD












