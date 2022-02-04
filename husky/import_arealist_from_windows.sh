#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then 
echo  'Please do not run this script as root' ; exit
fi
cat /home/fido/config.win | grep EchoArea | sed 's|\\|/|g'
