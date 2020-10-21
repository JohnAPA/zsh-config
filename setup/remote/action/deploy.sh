#!/bin/bash
#$ helper:{'File-[single][no extension]' | "Makes the file executable, then creates a copy to a persistent dir/links it from there to bin($PATH)"}
#-----------
NEW_HOME="/persistent_bin"
# There needs to be a script that if it does not exist, create it. 
INPUT=$1
BIN="/usr/local/bin"
# There needs to be a script to check if this exists. 
FILE="$1.sh"
FILEMOD=""
#-----------
   # if [ -z "$1" ] 
   # then
   #    exit 1
   #    echo "Please Enter Filename"
   # fi
# ------
   # if [ ${INPUT: -3} == ".sh" ]
   # then 
   #    FILE=$1
   #    FILEMOD="${FILE%.sh}"
   #    FILEPATH="readlink -e $FILEMOD"
   # echo "$FILE   $FILEMOD   $FILEPATH"
   # else
   #    FILE="$1.sh"
   #    FILEMOD="$1"
   #    FILEPATH="readlink -e $FILEMOD.sh"
   # fi
# #---------------
chmod u+x $FILE
cp "$FILE" $NEW_HOME

ln -s "$NEW_HOME/$FILE" "$BIN/$1"
rst

echo "$FILE added to bin & copied to $NEWHOME"
echo "Your new command: '$1' "

  
 
  
