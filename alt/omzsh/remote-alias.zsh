# -----------------------
# Aliases
#------------------------

# Util --------------------------------------------
alias rst='source ~/.zshrc'
alias clr='clear'

alias backup='cp {,.bak}'
alias backup.isoriginal='cp {,.original.bak}'
alias bg="backup"

# Servers -----------------------------------------
alias empa="sudo -u empa $1"
alias empa.status="cd /home/empa && sudo -u empa pm2 status"
alias empa.restart="cd /home/empa && sudo -u empa pm2 restart empa.js --watch"
alias empa.monit="cd /home/empa && sudo -u empa pm2 monit"

alias dev="sudo -u test $1"
alias dev.status="cd /home/test && sudo -u test pm2 status"
alias dev.restart="cd /home/test && sudo -u test pm2 restart ./bin/www --watch"
alias dev.monit="cd /home/test && sudo -u test pm2 monit"
alias dev.start="cd /home/test && sudo -u test pm2 start ./bin/www"
alias dev.start.dev="cd /home/test && sudo -u test pm2 start app.js --watch"
alias dev.stop="cd /home/test && sudo -u test pm2 stop app.js"

# Sublime / Workspace ------------------------------
alias sub="rsub"
alias sbl="rsub"
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
alias nginx.config="sub /etc/nginx/sites-available/default"
alias nginx.log="sub /var/log/nginx/access.log /var/log/nginx/error.log && systemctl status nginx.service"
   
            # -------------------------------------
            alias nx.rl="nginx.reload"
            alias nr="nginx.restart"
            
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
