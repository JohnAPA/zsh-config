# ====================
# Custom Alias File
# ====================

# Edit
# ----------------
alias edit="subl ~/.zshrc ~/.oh-my-zsh/custom/alias.zsh ~/.oh-my-zsh/custom/functions.zsh && subl --command "show_panel {\"panel\": \"console\", \"toggle\": true}""
alias editzsh="subl ~/.zshrc"
alias editomzsh="subl ~/.oh-my-zsh"

alias rst="source ~/.zshrc && clear"
alias ls-a="ls -a $1"
alias ln-s="ln -s $1"

alias link="ls -a $pbpaste $1"

alias cheat="vim ~/cube/cmdDoc/cheatsheet.txt"
alias cheatsheet="subl ~/cube/cmdDoc/cheatsheet.txt"


# Server Connections
# ----------------
DIGIO.IP=''
sublime.entry=''

alias connex='ssh jrapa86@107.180.93.44'
alias edelivr='ssh edelivr@107.180.93.44'
alias pi='ssh pi@192.168.1.233'
alias newConnex='ssh -R 52698:localhost:52698 jrapa86@107.180.93.44'
alias digio='ssh -R 52698:localhost:52698 root@174.138.37.139'
alias digio.nosub="ssh root@174.138.37.139"



# Acronyms
# ---------------
   #  NPM Commands
   # ----------------
   alias npmr='npm run'
   alias npmi='npm install --save '
   # ----------------
   alias bi="brew install"
   alias home="cd ~"
   alias mi="makeicn"
   alias mkicn="makeicn"




#  Go-To Commands
# ----------------
alias goto-hexo='cd /Users/cnode/cube/jsEnv/hexo/blog'


#  Go Commands
# ----------------
alias go-hexo='goto-hexo'

#  Custom Function Shortcuts
# --------------------------
alias appid="appID"


alias esp='cd /Users/cnode/esp8266/projects'


# Files
# ---------
# network.info.zsh 
# jekyll.zsh
# nginx.zsh
# 

#  New
# --------------------------
alias about="hostnamectl"


alias server='python -m SimpleHTTPServer 8000'
alias npmhelp='firefox https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm'

# A global alias to pipe a command’s output to less
alias -g L='| less' 

# A global alias to pipe a command’s output to grep: alias -g G='| grep'. You can use it like so: history G ssh
alias -g G='| grep'

# function conv(){
#    # color=$( convert image.jpg -format "%[pixel:p{0,0}]" info:- ) 
#    # convert image.jpeg -alpha off -bordercolor $color -border 1 \
#    #  \( +clone -fuzz 30% -fill none -floodfill +0+0 $color \
#    #     -alpha extract -geometry 200% -blur 0x0.5 \
#    #     -morphology erode square:1 -geometry 50% \) \
#    #  -compose CopyOpacity -composite -shave 1 outputfilename.icns
   
#    # convert image.jpeg -background rgba(0,0,0,0) test1.icns
#    # convert image.jpeg -fuzz 25% -fill none -draw "matte 0,0 floodfill" -channel alpha -blur 0x1 -level 50x100% +channel -background saddlebrown -flatten result.png
#    # # mk-icns result.png ./ -n 'final'

#    # magick convert image.jpg -transparent white transparent.png
#    # magick convert image.jpg -fuzz 20% -transparent "#ffffff" TRANSPARENT.png
#    # magick convert image.jpg -fuzz 10% -transparent "#ffffff" TRANSPARENT.png
#    # magick convert image.jpg -fuzz 2% -transparent "#ffffff" TRANSPARENT.png
#    # magick convert image.jpg -fuzz 5% -transparent white TRANSPARENT.png
#    # magick convert image.jpg -fuzz 9% -transparent white TRANSPARENT.png

#    makeicn
   
# }




# function cmake(){
   


#    ORIG='image.jpg'
#    DIR='myimage.iconset'
#    mkdir $DIR
#    cd $DIR
#    convert -resize 16x16 ../image.jpg icon_16x16.png
#    convert -resize 32x32 ../image.jpg icon_16x16@2x.png
#    convert -resize 32x32 ../image.jpg icon_32x32.png
#    convert -resize 64x64 ../image.jpg icon_32x32@2x.png
#    convert -resize 128x128 ../image.jpg icon_128x128.png
#    convert -resize 256x256 ../image.jpg icon_128x128@2x.png
#    convert -resize 256x256 ../image.jpg icon_256x256.png
#    convert -resize 512x512 ../image.jpg icon_256x256@2x.png
#    convert -resize 512x512 ../image.jpg icon_512x512.png
#    convert -resize 1024x1024 ../image.jpg icon_512x512@2x.png
# cd ..
# iconutil -c icns $DIR
# }

alias npu='ncu'
alias nodeglobaldircheck='npm ls -g --depth 0'
alias nodeglobaldir='cd /usr/local/lib/node_modules'
alias check-outdated='npm outdated --depth=3'

alias lf="deployfile"
alias deploy="deployfile"
alias ud="undeployfile"

#  IP Address
# ----------------
alias ip="echo $(ip.pvt) '-->' $(ip.pub)"
alias ip.pvt="ipconfig getifaddr en0"
alias ip.pub="curl icanhazip.com"

alias ip.pvt.copy="echo $(ip.pvt) | pbcopy"
alias ip.pub.copy="echo $(ip.pub) | pbcopy"

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

