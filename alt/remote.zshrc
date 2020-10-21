# ========================
# .zshrc - DIGIO [Server]
# ========================

# Path --------------
export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/root/.oh-my-zsh"

# Theme ------------
ZSH_THEME="af-magic"

# Plugins ----------
plugins=()

# OMZSH ------------
source $ZSH/oh-my-zsh.sh

# Editor -----------
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='sub'
else
  export EDITOR='nvim'
fi

# Main Edit Command --------
alias edit="rsub ~/.zshrc && rsub ~/.oh-my-zsh/custom/alias.zsh && rsub ~/.oh-my-zsh/custom/variables.zsh && rsub ~/.oh-my-zsh/custom/functions.zsh"

# New Aliases --------------
