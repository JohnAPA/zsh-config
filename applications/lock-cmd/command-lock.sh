#!/bin/bash

# Command-Lock
# Info:   Run command 'lock "<command>" ', and it will be triggerable by typing '!'. It also saves
#         a log (in a numbered array) which (in future versions) will be accessible by !<num> (ie !1, !2, !3). 
# Flags:  -s|saveDir, -t|tmp_dir, -c|clear, -r|release, -c|clear_log
# ==========================================
# ----------------------------------------
function lf(){
  #------------
  CMD='/root/.tmp/command-lock.tmp'
  OUTPUT=$(cat $CMD)
  echo $OUTPUT
  # -clear
  # -clear_log

#   # Default values of arguments
#   SHOULD_INITIALIZE=0
#   SAVE_FILE="/root/config/command-lock/command-lock.sh"
#   ROOT_DIRECTORY="$HOME/etc/projects"
#   TMP_DIRECTORY="$HOME/.tmp/"
#   REMOTE_DIRECTORY="$HOME/env/command-lock/"
#   LOG_MAX_LENGTH=
#   OTHER_ARGUMENTS=()
#   #-------------
# for arg in "$@"
#   do
#     case $arg in
#         -i|--initialize)
#         SHOULD_INITIALIZE=1
#         shift 
#         ;;
#         -c=*|--config_file=*)
#         SAVE_FILE="${arg#*=}"
#         shift # Remove --cache= from processing
#         ;;
#         -t=*|--tmp_dir=*)
#         TMP_DIRECTORY="${arg#*=}"
#         shift # Remove --cache= from processing
#         ;;
#         -r|--root)
#         ROOT_DIRECTORY="$2"
#         shift # Remove argument name from processing
#         shift # Remove argument value from processing
#         ;;
#         *)
#         OTHER_ARGUMENTS+=("$1")
#         shift # Remove generic argument from processing
#         ;;
#     esac
# done

# echo "# Should initialize: $SHOULD_INITIALIZE"
# echo "# Save directory: $SAVE_FILE"
# echo "# Root directory: $ROOT_DIRECTORY"
# echo "# Other arguments: ${OTHER_ARGUMENTS[*]}"
#---------------------------
}

# ==========================================
# ----------------------------------------
function lf.clear(){
  LF_DIR="/var/log/root/command-lock.log"
  #-----------------
  echo "">$LF_DIR
}

alias !="$(lf)"

# ==========================================
# ----------------------------------------
function command-lock-log(){
  filename="/var/log/root/command-lock.log"
  filelen=$(wc -l $filename)
  FL=${filelen:0:2}
  #-----------------------
  
  declare -a myArray
  myArray=(`cat "$filename"`)
  for ((i=0; i<$FL; i++))
    do
      echo "Command [$i]: ${myArray[$i]}"
    done
}
# ==========================================
# ----------------------------------------

function lock(){
  TMP="/root/.tmp/command-lock.tmp"
  SAVELOG="/var/log/root/command-lock.log"
  LOCKCMD="$1"
  #------------------

  echo "============================="
    # -- Lock Command to tmp
  echo $LOCKCMD>$TMP

    # -- Save Lock Command to log
  echo $LOCKCMD>>$SAVELOG

    # -- Notify Status
  echo "Locked in ['$LOCKCMD']"

  echo "============================="
}

# ==========================================
# ----------------------------------------
function declare.script-dir(){
  DIR=$1
  #---------------
  echo "Files now executable:"
  echo "------------------"
    for file in $DIR/*
    do
      # cmd [option] "$file" >> results.out
      chmod u+x "$file"
      
      FILENAME=$(basename $file)
      echo "$FILENAME"
    done
}