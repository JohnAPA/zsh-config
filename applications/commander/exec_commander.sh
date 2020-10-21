#!/bin/bash
# TXTFILE='/admin/source/commands.txt'
# [ -f /etc/resolv.conf ] && echo "$TXTFILE exists."

# if [ -f $TXTFILE];then
   # exec $(grep -v ^# commander.sh | sed -e 's/^[ \t]*//')
   # exec $(cat $TXTFILE)
   # rm $TXTFILE
   # sed -i 's/#BEGIN.*#END/#BEGIN \r\r\r\r\r #END/g' commander.sh
   # echo "Commands Executed including txt file."
# else
   exec $(grep -v ^# commander.sh | sed -e 's/^[ \t]*//')
   exec $(sed -i 's/#BEGIN.*#END/#BEGIN \r\r\r\r\r #END/g' commander.sh)
   echo "Commands Executed including txt file."
# fi




