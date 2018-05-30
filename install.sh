#! /bin/bash
#include config file
#this is where all variable options are set
#set -u
source ./Mik.conf
echo "loading config file"
echo "usename is set to $mtkusr"
echo "router IP is set to $mtkip"

echo "config loaded"
echo "copying public key to server"
##ssh-copy-id $mtkusr@$mtkip
echo "Creating script"
printf '%s\n' '#!/bin/bash' 'today=`date '+%Y-%m-%d_%H.%M.%S'`' 'echo "date set to $today"' file=$savedir'$today'.rsc 'echo config will be saved as "$file"' 'ssh shack@10.0.0.1 /export > "$file"'  > $dir$name
chmod a+x $dir$name
#add it to a daily cron
sudo mv $dir$name /etc/cron.daily/$name
echo "Done"
