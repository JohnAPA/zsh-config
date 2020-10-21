# ======================
# Custom Functions File
# ======================
# goto hexo theme dir > git clone + paste
# param: name of project (ie. blog)

# # ----------------
# function hexotheme(){
#    tmpDir='/Users/cnode/tmp/hexotheme.tmp'
#    themeDir='/Users/cnode/cube/jsEnv/hexo/'$1'/themes'
#    currDir=$(pwd)
#    cd $themeDir
#    git clone `pbpaste`
#    cd currDir
# }
# # ----------------------------------------
# function esplib(){
#    libDir='/Users/cnode/esp8266/lib'
#    gitLink=$(pbpaste) 
#    basename=$(basename $gitLink)
#    filename=${basename%.*}
#    mkdir $filename
#    git clone $gitLink $libDir'/'$filename
   
# }
# ----------------------------------------

function gitinst-omzsh-plugin(){
   libDir='/Users/cnode/.oh-my-zsh/custom/plugins/$1'
   tmpDir='/Users/cnode/.oh-my-zsh/tmp/temporary.tmp'
   # -------
   gitLink=$(pbpaste)
   basename=$(basename $gitLink)
   filename=${basename%.*}
   mkdir $filename
   git clone $gitLink $libDir'/'$filename
}


# ----------------------------------------

# esps: ESP Send to Device
function esps(){
   PORT='/dev/tty.SLAB_USBtoUART'
   FILE=$1
   espruino -p $PORT -b 115200 -e 'save()' $FILE'.js'
}



# ----------------------------------------
   # Get the CFBundle ID by appname 
function appID(){
      osascript -e 'id of app "'$1'"'
   }
# ----------------------------------------
   # Add a function (note it places it in newFunction)
   #should place working in this file after. 
function add_function(){
      top='#--------------\r'
      newfxn=$(
         echo $top
         echo 'function '$1'(){'
         shift
         echo "${@}"
         echo '}'
      )
    echo $newfxn>>/Users/cnode/.oh-my-zsh/custom/newFunctions.zsh
    rst # Alias previously defined
   }
alias newfxn='add_function'
# ----------------------------------------

   # execute a file passed as param
function run(){
         sh $1'.sh'
      }
# ----------------------------------------

# Change permission to 'exec' 
function makeExec(){
   FILE=$1
   chmod u+x $FILE
   echo $FILE' is now executable'
}
# ----------------------------------------
   # Change perm to exec by usr
function makerun(){
   FILE=$1
   chmod u+x $FILE
   sh $FILE'.sh'
}
# ----------------------------------------

# Shell Commands
# ----------------------------------------
function tab () {
  
    osascript &>/dev/null <<EOF
      tell application "iTerm"
        activate
        tell current window to set tb to create tab with default profile
        tell current session of current window to write text "pwd"  
      end tell
EOF
}

function split(){
    osascript &>/dev/null <<EOF
      tell application "iTerm"
        activate
        tell current window to set tb to create tab with default profile
        tell current session of current window to set newSplit to split horizontally with same profile
        tell newSplit
          select
          write text "pwd"
        end tell    
      end tell
EOF

}

# function omzsh(){
#     osascript /Users/cnode/cube/applescript/production/openOhMyZshDir.scpt
# }

#  Mosquitto
# --------------------------
function msg(){
   mosquitto_pub -h localhost -t $1 -m $2
}

function listenfor(){

   mosquitto_sub -h localhost -t $1
}
#  New Functions
# --------------------------



# Put File in Pin and make it executable
function deployfile(){
  

  FILE="$1.sh"
  chmod u+x $FILE
  ln -s "$(pwd)/$FILE" "/usr/local/bin/$1"
  
 
  
}

function undeployfile(){
  FILE="$1"
  BINFILE="/usr/local/bin/$FILE"
  rm $BINFILE
  echo "$1.sh has been taken out of bin"
}


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
