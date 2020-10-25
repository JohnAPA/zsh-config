# ====================
# Custom Alias File
# ====================

alias rst.dock="killall Dock"




# =========================[ Connections ]=========================
alias emailBox="ssh root@157.230.182.143"
alias connex='ssh jrapa86@107.180.93.44'
alias edelivr='ssh edelivr@107.180.93.44'
alias pi='ssh pi@192.168.1.233'
alias digio="ssh -R 52698:localhost:52698 root@67.205.189.39"
alias digio.nosub="ssh root@67.205.189.39"

# =========================[ Addresses ]=========================
alias ip.pvt="ipconfig getifaddr en0"
alias ip.pub="curl icanhazip.com"
alias ip="$(ip.pvt) --> $(ip.pub)"

alias ip.digio="echo 67.205.189.39"
alias ip.connex="echo 107.180.93.44"
alias ip.vpn.admin="echo https://161.35.6.47:943/admin"
alias ip.vpn="echo 161.35.6.47:943/"
alias ip.emailBox="echo 157.230.182.143"

   alias digio.ip='ip.digio'
   alias connex.ip="ip.connex"
   alias vpn.ip="ip.vpn"
   alias emailBox.ip="ip.emailBox"
   alias email.ip="ip.emailBox"
   alias ip.email="ip.emailBox"

# =========================[ Address-Copy ]=========================
alias ip.pvt.copy="echo $(ip.pvt) | pbcopy"
alias ip.pub.copy="echo $(ip.pub) | pbcopy"
alias ip.digio.copy="echo $(ip.digio) | pbcopy"
alias ip.connex.copy="echo $(ip.connex) | pbcopy"
alias ip.vpn.copy="echo $(ip.vpn) | pbcopy"
alias ip.emailBox.copy="echo $(ip.emailBox) | pbcopy"

   alias ip.pvt.c="ip.pvt.copy"
   alias ip.pub.c="ip.pub.copy"
   alias ip.digio.c="echo $(ip.digio) | pbcopy"
   alias ip.connex.c="echo $(ip.connex) | pbcopy"
   alias ip.vpn.c="echo $(ip.vpn) | pbcopy"
   alias ip.emailBox.c="echo $(ip.emailBox) | pbcopy"
   alias ip.email.c="echo $(ip.emailBox) | pbcopy"


# =========================[ Edit ]=========================
alias sub="subl"
alias edit="subl ~/.oh-my-zsh/custom/functions.zsh && subl ~/.zshrc && subl ~/.oh-my-zsh/custom/alias.zsh"
alias edit.p10k="sub ~/.p10k.zsh."
alias edit.nvim="nvim ~/.zshrc"
alias edit.alias.nvim="nvim ~/.oh-my-zsh/custom/alias.zsh"
alias edit.func.nvim="nvim ~/.oh-my-zsh/custom/functions.zsh"
alias editzsh="subl ~/.zshrc"
alias editomzsh="subl ~/.oh-my-zsh"

alias rst="source ~/.zshrc && clear"
alias ls-a="ls -a $1"
alias ln-s="ln -s $1"

alias link="ls -a $pbpaste $1"

# =========================[ Cheatsheet ]=========================
alias cheat="vim ~/cube/cmdDoc/cheatsheet.txt"
alias cheatsheet="subl ~/cube/cmdDoc/cheatsheet.txt"

# =========================[ Applications ]=========================



# =========================[ Quick-Commands ]=========================
   #  NPM Commands
   # ----------------
   alias npmr='npm run'
   alias npmi='npm install --save '
   # ----------------
   alias bi="brew install"
   alias home="cd ~"
   alias mi="makeicn"
   alias mkicn="makeicn"




# =========================[ Go-To Commands ]=========================
alias goto-hexo='cd /Users/cnode/cube/jsEnv/hexo/blog'


# =========================[ Go Commands ]=========================
alias go-hexo='goto-hexo'

# =========================[ Custom Function Shortcuts ]=========================
alias appid="appID"
alias esp='cd /Users/cnode/esp8266/projects'



# ==================[ New ]=========================
alias about="hostnamectl"


alias server='python -m SimpleHTTPServer 8000'
alias npmhelp='firefox https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm'

# A global alias to pipe a command’s output to less
alias -g L='| less' 

# A global alias to pipe a command’s output to grep: alias -g G='| grep'. You can use it like so: history G ssh
alias -g G='| grep'

alias npu='ncu'
alias nodeglobaldircheck='npm ls -g --depth 0'
alias nodeglobaldir='cd /usr/local/lib/node_modules'
alias check-outdated='npm outdated --depth=3'

alias lf="deployfile"
alias deploy="deployfile"
alias ud="undeployfile"




# Colors -----------------------
red="\033[33;31m $1"     # Red
green="\033[33;32m $1"   # Green
yellow="\033[33;33m $1"  # Yellow
blue="\033[33;34m $1"    # Blue
magenta="\033[33;35m $1" # Magenta
gray="\033[33;30m $1"    # Gray
cyan="\033[33;36m $1"    # Cyan

RCol='\e[0m'    # Text Reset

# Regular           Bold                Underline           High Intensity      BoldHigh Intens     Background          High Intensity Backgrounds
Bla='\e[0;30m';     BBla='\e[1;30m';    UBla='\e[4;30m';    IBla='\e[0;90m';    BIBla='\e[1;90m';   On_Bla='\e[40m';    On_IBla='\e[0;100m';
Red='\e[0;31m';     BRed='\e[1;31m';    URed='\e[4;31m';    IRed='\e[0;91m';    BIRed='\e[1;91m';   On_Red='\e[41m';    On_IRed='\e[0;101m';
Gre='\e[0;32m';     BGre='\e[1;32m';    UGre='\e[4;32m';    IGre='\e[0;92m';    BIGre='\e[1;92m';   On_Gre='\e[42m';    On_IGre='\e[0;102m';
Yel='\e[0;33m';     BYel='\e[1;33m';    UYel='\e[4;33m';    IYel='\e[0;93m';    BIYel='\e[1;93m';   On_Yel='\e[43m';    On_IYel='\e[0;103m';
Blu='\e[0;34m';     BBlu='\e[1;34m';    UBlu='\e[4;34m';    IBlu='\e[0;94m';    BIBlu='\e[1;94m';   On_Blu='\e[44m';    On_IBlu='\e[0;104m';
Pur='\e[0;35m';     BPur='\e[1;35m';    UPur='\e[4;35m';    IPur='\e[0;95m';    BIPur='\e[1;95m';   On_Pur='\e[45m';    On_IPur='\e[0;105m';
Cya='\e[0;36m';     BCya='\e[1;36m';    UCya='\e[4;36m';    ICya='\e[0;96m';    BICya='\e[1;96m';   On_Cya='\e[46m';    On_ICya='\e[0;106m';
Whi='\e[0;37m';     BWhi='\e[1;37m';    UWhi='\e[4;37m';    IWhi='\e[0;97m';    BIWhi='\e[1;97m';   On_Whi='\e[47m';    On_IWhi='\e[0;107m';



alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkdirp='mkdir -pv'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'
alias ports='netstat -tulanp'
# get web server headers #
alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'
# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
 
# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias root='sudo -i'
alias su='sudo -i'
alias dnstop='dnstop -l 5  eth1'
alias vnstat='vnstat -i eth1'
alias iftop='iftop -i eth1'
alias tcpdump='tcpdump -i eth1'
alias ethtool='ethtool eth1'
 
# work on wlan0 by default #
# Only useful for laptop as all servers are without wireless interface
alias iwconfig='iwconfig wlan0'
## pass options to free ##
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop##
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
## quickly flush out memcached server ##
alias flushmcd='echo "flush_all" | nc 10.10.27.11 11211'
#alias existing commands
alias ls="ls -aFhl"
alias mls='ls /;echo "Root directory listed";'

