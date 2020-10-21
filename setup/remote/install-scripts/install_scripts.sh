#!/bin/bash



function npmGlobals {

   npm install -g express pm2 gulp gulp-cli express-generator
   wait
   clear
}

function localinstall {
   npm init -y
   npm install --save express pm2 gulp 
   express --view=hbs -f 
   npm install 
   npm audit fix
   clear
   #rename app.js empa.js

}

function zsh {
   apt update && apt upgrade
   apt install zsh
   wait

}

function omzsh {
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}



function nvim {
sudo apt install neovim
ln -s /usr/share/nvim/runtime/ nvim
#if something goes wrong try appimage version
# CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage
# Set the above with the correct path, then run the rest of the commands:
# set -u
# sudo update-alernatives --install /usr/bin/ex ex "${CUSTOM_NVIM_PATH}" 110
# sudo update-alternatives --install /usr/bin/vi vi "${CUSTOM_NVIM_PATH}" 110
# sudo update-alternatives --install /usr/bin/view view "${CUSTOM_NVIM_PATH}" 110
# sudo update-alternatives --install /usr/bin/vim vim "${CUSTOM_NVIM_PATH}" 110
# sudo update-alternatives --install /usr/bin/vimdiff vimdiff "${CUSTOM_NVIM_PATH}" 110
}


function powerlevel10k {
   sudo apt-get install fonts-powerline
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
   echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
   # install meslo nerd font
   git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
#goto vimrc and add 
# let g:airline_powerline_fonts = 1
}

function itermShell {
   curl -L https://iterm2.com/shell_integration/install_shell_in
tegration_and_utilities.sh | bash

}


function zshcompletion {
     git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
     #enable in .zshrc
  #     plugins=(… zsh-completions)
  # autoload -U compinit && compinit
  # create completions: https://github.com/zsh-users/zsh-completions/blob/master/zsh-completions-howto.org
}

function sublime {
   echo "sublime TBC"
}

function vim_airline {
   curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    #go to ~/.vimrc
#       call plug#begin('~/.vim/plugged')
# Plug 'vim-airline/vim-airline'
# Plug 'vim-airline/vim-airline-themes'
# call plug#end
}

function vim_nerdtree {
   echo "nerd tree TBC!"
#    call plug#begin('~/.vim/plugged')
# Plug 'vim-airline/vim-airline'
# Plug 'vim-airline/vim-airline-themes'
# Plug 'scrooloose/nerdtree'
# call plug#end
# let g:airline_powerline_fonts = 1
# let g:NERDTreeDirArrowExpandable = '▸'
# let g:NERDTreeDirArrowCollapsible = '▾'
# autocmd StdinReadPre * let s:std_in=1
# autocmd VimEnter * if argc == 0 && !exists("s:std_in") | NERDTree | endif
#run :PlugInstall in vim

}

function vim_color {
   git clone https://github.com/joshdick/onedark.vim.git ~/onedark
cd ~/onedark
mkdir ~/.vim/colors
cp colors/onedark.vim ~/.vim/colors/
cp autoload/onedark.vim ~/.vim/autoload/
#to vimrc:
# colorscheme onedark
# syntax on
# set number
# highlight Normal ctermbg=None
# highlight LineNr ctermfg=DarkGrey
}



function fzf {
   sudo apt-get install fzf
   #Plug 'junegunn/fzf', { 'do': { -> fzf#install } }
   # to zshrc:
   #[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
   # export FZF_DEFAULT_OPTS=‘—height=40% —preview=“cat {}” —preview-window=right:60%:wrap’
}

function newuser {
   sudo useradd -s /usr/bin/zsh -d /public -m -G sudo "$1"
   sudo passwd 252NiNe3$$
   sudo mkdir /.ssh/
   sudo chmod 0700 /.ssh/
   sudo -- sh -c "echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCkfsXPZ+vRxXVZYlhQ5th9pqvCbfZu4nB2OA4ZJ4vvd79yiKoBeaDyrXZ0I9nZqKts7lS7m+a2ZMJbJJnxEHSIhavLjwkHFBf1QqFBdTTtp9XWk0tbC5/jRKnfZ14XcNxQIjqiyyAP5TjQTFRbycHO4WOpImqeEIqudaJi+l9RyU0hTiY5DT0qkyzummOZT9t52+Nrh72tFuDq7Z6LlmlhsxR+Nnhseb9j5pjJOAlBKe2F0KGG+cJfIjQLBpWLuIBjisuA4JWGU30ffq1ZB3j2vj7D3XDRhnXzZ8CSkP2/sfKUtxNgSlZdNyUtC7V65j4JVpayszJYBDGKAcfeXlYEKa5+rhy4DuKlb0NrBbSJSZZs2x7XoOroEsS//CR3QtZ9IlnMzdGc1A8WcWL8ihBy4AC/nCpj8i273hoPI6SOY9+zH7XGTHk/U6f3psrA7tEc+4bYI8/5IUdaxw1z5xFfuCuSeFwf9L08DcaUsEKhZMapV4DmS+uvTB3VXPqYIJwEvRfupBPQ5iZU6cXG294aUe8OXCITFey8QPoeFixD/NdbeeiduiS+RiW+mBKjCcJpREUfAbMkaihBLKc1JuUhY/0t9zJEDytijaOw1EldYIutj3nzQ9F014IAbX165SkWqyeXG/FCzmdJ18pXhws9GaINpU5bBL6mAMqNiAcyCQ== jrapa86@gmail.com
' > /public/.ssh/authorized_keys"
   sudo chown -R emedx:emedx /.ssh/

}




function tweak {
   mkdir ~/tmp
   mkdir ~/backup
   mkdir ~/backup/original

   echo "alias backup='cp $1{,.bak}'">>~/.zshrc
   echo "alias bg='backup'">>/.zshrc
   echo "alias original='cp $1{,.bak} && mv $1.bak ~/backup/original/'">>~/.zshrc
   echo "alias clr='clear'">>~/.zshrc
   echo "alias rst='source ~/.zshrc'">>~/.zshrc
   echo "alias ls-a='ls -a'">>~/.zshrc

   sed -i 's/robbyrussell/af-magic/g' ~/.zshrc

   # delete lines matching pattern
 # sed '/^#/d'
 # delete trailing whitespace
 sed -i 's/[ \t]*$//' ~/.zshrc

   source ~/.zshrc

}
