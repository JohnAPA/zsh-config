
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="af-magic"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias edit="rsub ~/.zshrc && rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.alias="rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.a="rsub ~/.oh-my-zsh/custom/alias.zsh"
alias edit.zsh="rsub ~/.zshrc"
alias edit.z="rsub ~/.zshrc"
alias edit.func="rsub ~/.oh-my-zsh/custom/functions.zsh"
alias edit.f="rsub ~/.oh-my-zsh/custom/functions.zsh"

alias rst="source ~/.zshrc"
alias amion.logs="sudo -u amion pm2 logs"
alias amion.restart="cd /home/amion && sudo -u amion pm2 restart amion.js --watch"
alias amion.status="sudo -u amion pm2 status"
alias empa.restart="cd /home/empa && sudo -u empa pm2 restart empa.js --watch"
alias mysql="mysql -u root -p"
# source /usr/share/powerlevel9k/powerlevel9k.zsh-theme
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias commander.exec="execute_commander"

# POWERLEVEL9K_MODE='awesome-patched'
# POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
# POWERLEVEL9K_BATTERY_CHARGING='yellow'
# POWERLEVEL9K_BATTERY_CHARGED='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED='white'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_STATUS_VERBOSE=true
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status)
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
# POWERLEVEL9K_SHOW_CHANGESET=false
# POWERLEVEL9K_CHANGESET_HASH_LENGTH=6

#--Alias Suffix
#alias -s [file-extension]=[name-of-app] 
# alias -s txt=code
# alias -s md=typora

#Global Alias
# You can create global aliases of frequently used commands like those after the |(pipe) symbol or you can assign your IP address or some text that might come often when you are working.
# alias -g [custom-alias]="[Command]"

#alias -g G="| grep"
#alias -g L="| less"
#alias -g GG="google.com"

# apt-cache search vlc G data will translate to
# apt-cache search vlc | grep data
# 2. Use of second alias:
# cat readme.md L will translate to
# cat readme.md | less
# 3. Use of third alias
# $ ping GG will translate to
# $ ping google.com

# Alias with Parameters
# [alias-name]() {
#     command $param1 | $param2
# }

# acs() {
#     apt-cache search $1 | grep $2
# }

# $ acs vlc data which translates to:
# $ apt-cache search vlc | grep data

# Global Alias expansion
# globalias() {
#    if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
#      zle _expand_alias
#      zle expand-word
#    fi
#    zle self-insert
# }

# zle -N globalias

# bindkey " " globalias
# bindkey "^ " magic-space           # control-space to bypass completion
# bindkey -M isearch " " magic-space # normal space during searches

# Filesystem
alias ..='cd ..'            # Go up one directory
alias ...='cd ../..'        # Go up two directories
alias ....='cd ../../..'    # And for good measure
alias ls='ls --color=auto'  # gimmie colors
alias l='ls -lah --color=auto'   # Long view, show hidden
alias la='ls -AF --color=auto'   # Compact view, show hidden
alias ll='ls -lFh --color=auto'  # Long view, no hidden

# Helpers
alias grep='grep --color=auto' # Always highlight grep search term
alias ping='ping -c 5'      # Pings with 5 packets, not unlimited
alias df='df -h'            # Disk free, in gigabytes, not bytes
alias du='du -h -c'         # Calculate total disk usage for a folder
alias sgi='sudo gem install' # Install ruby stuff
alias be='bundle exec'       # shortcut for ruby environment activation
alias dc='docker-compose'    # invoke docker-compose, which takes too long to type.
alias k='kubectl'            # shorthand for working with kubernetes
alias clj='clj-env-dir'      # Clojure helper
alias clr='clear;echo "Currently logged in on $(tty), as $(whoami) in directory $(pwd)."'
alias tt='tt++ $HOME/.ttconf'
alias svim="sudo vim" # Run vim as super user
alias emc="emacsclient -n" # no blocking terminal waiting for edit

# Nifty extras
alias servethis="python -c 'import SimpleHTTPServer; SimpleHTTPServer.test()'"
alias pypath='python -c "import sys; print sys.path" | tr "," "\n" | grep -v "egg"'
alias pycclean='find . -name "*.pyc" -exec rm {} \; && find . -name "__pycache__" -exec rm -rf {} \;'
alias ssh='ssh -R 10999:localhost:22'
alias nethack='telnet nethack.alt.org'
alias tmux='TERM=xterm-256color \tmux'

killit() {
    # Kills any process that matches a regexp passed to it
    ps aux | grep -v "grep" | grep "$@" | awk '{print $2}' | xargs sudo kill
}

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

