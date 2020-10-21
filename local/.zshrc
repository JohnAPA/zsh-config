##                                    |
##              ZSHRC                 |
## ====================================----

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet
##==========================================

# Export Paths ------------------------------
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/Users/cnode/.oh-my-zsh" 
export PATH=$PATH:/opt/WebDriver/bin >> ~/.profile
export PATH=$PATH:/Users/cnode/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Deviot/penv/bin
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH" >> ~/.zprofile
#============================================

# Ruby ---------------------------------------
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.7.0/bin:$PATH"
export PATH="/Users/cnode/.gem/ruby/2.7.0/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.7.0/bin:$PATH"
#============================================

# ZSH Completions ---------------------------
fpath=(/Users/cnode/.oh-my-zsh/custom/completions $fpath)
fpath=(/Users/cnode/.oh-my-zsh/custom/plugins/mac-zsh-completions/completions $fpath )
#============================================

# Powerlevel-10k -----------------------------
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
#============================================

#---------------------------------------------
# ZSH Config----------
export LANG=en_US.UTF-8
#============================================

# Theme----------------
ZSH_THEME="robbyrussell"
   # ZSH_THEME="robbyrussell"
   # ZSH_THEME="avit"
#============================================

# Plugins -----------------------------------
plugins=(
         git 
         iterm2 
         z 
         zsh-completions
         mac-zsh-completions
         zsh-syntax-highlighting
         )
#============================================

#-- For zsh-z and zsh completions-----------
  autoload -U compinit && compinit
  zstyle ':completion:*' menu select

#============================================

# --------Preferred Editor-------------------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='rmate -w'
else
  export EDITOR='vim'
fi
export JEKYLL_EDITOR=subl
#============================================

source $ZSH/oh-my-zsh.sh
source ~/.iterm2_shell_integration.zsh

#============================================

# ------- Dir Browsing
d='dirs -v | head -10'
1='cd -'
2='cd -2'
3='cd -3'
4='cd -4'
5='cd -5'
6='cd -6'
7='cd -7'
8='cd -8'
9='cd -9'

#============================================

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export EDITOR='subl -w'
#============================================

###-begin-pm2-completion-###
### credits to npm for the completion file model
#
# Installation: pm2 completion >> ~/.bashrc  (or ~/.zshrc)
#

COMP_WORDBREAKS=${COMP_WORDBREAKS/=/}
COMP_WORDBREAKS=${COMP_WORDBREAKS/@/}
export COMP_WORDBREAKS

if type complete &>/dev/null; then
  _pm2_completion () {
    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$COMP_CWORD" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           pm2 completion -- "${COMP_WORDS[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _pm2_completion pm2
elif type compctl &>/dev/null; then
  _pm2_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       pm2 completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _pm2_completion + -f + pm2
fi
###-end-pm2-completion-###
#============================================

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Added Custom Functions from the command line 
#------------------------------------------

