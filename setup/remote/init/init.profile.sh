#!/bin/bash 

cd ~
apt-get update
apt upgrade
apt-get install zsh
apt-get install powerline fonts-powerline
npm install -g express pm2 gulp gulp-cli express-generator
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

apt-get install zsh-theme-powerlevel9k
echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc

apt-get install zsh-syntax-highlighting
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
apt-get install git
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
#echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"


#sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/
#install.sh -O -)"



echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc
   echo "alias backup='cp $1{,.bak}'">>~/.zshrc
   echo "alias bg='backup'">>/.zshrc
   echo "alias original='cp $1{,.bak} && mv $1.bak ~/backup/original/'">>~/.zshrc
   echo "alias clr='clear'">>~/.zshrc
   echo "alias rst='source ~/.zshrc'">>~/.zshrc
   echo "alias ls-a='ls -a'">>~/.zshrc


ZSH_PATH="$(whereis zsh)"
#usermod -s /usr/bin/zsh $(whoami)
chsh -s /bin/zsh
cd .oh-my-zsh
upgrade_oh_my_zsh
cd ~
rst
