# -----------------------
# Aliases
#------------------------


alias mysql="mysql -u root -p"
alias commander.exec="execute_commander"
# Util --------------------------------------------
alias rst='source ~/.zshrc'
alias clr='clear'

alias edit="rsub ~/.zshrc && rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.alias="rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.a="rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.zsh="rsub ~/.zshrc"
alias edit.z="rsub ~/.zshrc"
alias edit.func="rsub ~/.oh-my-zsh/custom/functions.zsh"
alias edit.f="rsub ~/.oh-my-zsh/custom/functions.zsh"

alias backup='cp {,.bak}'
alias backup.isoriginal='cp {,.original.bak}'
alias bg="backup"
alias create-user="adduser $1 && usermod -aG sudo $1"
alias lockfile.log="sub /var/log/root/command-lock.txt"
# alias executable="chmod u+x $1"
# alias xec="executable $1"

# Servers -----------------------------------------
alias empa="cd home/empa sudo -u empa $1"
alias empa.start="cd /home/empa && sudo -u empa pm2 start empa.js --watch"
alias empa.stop="cd /home/empa && sudo -u empa pm2 stop empa.js"
alias empa.delete="cd /home/empa && sudo -u empa pm2 delete empa.js"
alias empa.status="cd /home/empa && sudo -u empa pm2 status"
alias empa.restart="cd /home/empa && sudo -u empa pm2 restart empa.js"
alias empa.watch="cd /home/empa && sudo -u empa pm2 restart empa.js --watch"
alias empa.refresh="cd /home/empa && sudo -u empa pm2 restart empa.js"
alias empa.reload="cd /home/empa && sudo -u empa pm2 restart empa.js"
alias empa.monit="cd /home/empa && sudo -u empa pm2 monit"
alias empa.log="cd /home/empa && sudo -u empa pm2 logs"
alias empa.logs="cd /home/empa && sudo -u empa pm2 logs"
alias empa.logs="cd /home/empa && sudo -u empa pm2 flush empa"


alias api="cd /home/api sudo -u api $1"
alias api.start="cd /home/api && sudo -u api pm2 start api.js --watch"
alias api.watch="cd /home/api && sudo -u api pm2 restart api.js --watch"
alias api.stop="cd /home/api && sudo -u api pm2 stop api.js --watch"
alias api.delete="cd /home/api && sudo -u api pm2 delete api.js"
alias api.status="cd /home/api && sudo -u api pm2 status"
alias api.restart="cd /home/api && sudo -u api pm2 restart api.js --watch"
alias api.monit="cd /home/api && sudo -u api pm2 monit"
alias api.log="cd /home/api && sudo -u api pm2 logs"
alias api.logs="cd /home/api && sudo -u api pm2 logs"
alias api.logs="cd /home/api && sudo -u empa pm2 flush empa"


alias amion="cd /home/amion sudo -u amion $1"
alias amion.start="cd /home/amion && sudo -u amion pm2 start amion.js --watch"
alias amion.watch="cd /home/amion && sudo -u amion pm2 restart amion.js --watch"
alias amion.stop="cd /home/amion && sudo -u amion pm2 stop amion.js --watch"
alias amion.delete="cd /home/amion && sudo -u amion pm2 delete amion.js"
alias amion.status="cd /home/amion && sudo -u amion pm2 status"
alias amion.restart="cd /home/amion && sudo -u amion pm2 restart amion.js --watch"
alias amion.monit="cd /home/amion && sudo -u amion pm2 monit"
alias amion.log="cd /home/amion && sudo -u amion pm2 logs"
alias amion.logs="cd /home/amion && sudo -u amion pm2 logs"
alias amion.logs="cd /home/amion && sudo -u amion pm2 flush amion"


# Sublime / Workspace ------------------------------
alias sub="rsub"
alias sbl="rsub"
alias open="rsub"
alias workspace="rsub --project ~/sublime/server.sublime-project"


# Port --------------------------------------------
alias info.port="sudo ufw status verbose"
alias port.info.app="sudo ufw app list"
alias port.info="sudo ufw status verbose"
alias port.firewall="sudo ufw status && sudo ufw numbered"

alias port.open="sudo ufw allow $1"
alias port.close="ufw delete deny $1 comment 'Block access to smptd by default'"
alias port.open.strict="sudo ufw allow from 71.172.140.13 to any port $1"


# NGINX -------------------------------------------

alias nginx.restart="systemctl restart nginx"
alias nginx.reload="systemctl restart nginx"
alias nginx.refresh="systemctl restart nginx"
alias nginx.test="sudo nginx -t"

alias nginx.config="sub /etc/nginx/sites-available/default"
alias nginx.config.empa="sub /etc/nginx/sites-available/empa"
alias nginx.config.nvim="nvim /etc/nginx/sites-available/default"
alias nginx.config.empa.nvim="nvim /etc/nginx/sites-available/empa"



alias nginx.log="sub /var/log/nginx/access.log /var/log/nginx/error.log && systemctl status nginx.service"
alias test.something="curl -I $1"
alias test.contents="curl -i $1"
   
            # -------------------------------------
            alias nx.rl="nginx.reload"
            alias nr="nginx.restart"

# NGINX Specific ----------------------------------

function nginx.status(){
   CMD=$(systemctl status nginx.service)
   echo -e $CMD | grep "Active" | awk '{print "Server[Digio]: "  $2 $3}'
   echo "IP Address   :  $(ip.pvt)"
}
            
# Directory ---------------------------------------
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

# IP Address -------------------------------------
alias ip.pvt="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip.pub="curl http://icanhazip.com"

# Acronyms
# ---------------
   #  NPM Commands
   # ----------------
   alias npmr='npm run'
   alias npmi='npm install --save '
   # ----------------
