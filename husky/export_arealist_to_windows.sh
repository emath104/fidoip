#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then 
echo  'Please do not run this script as root' ; exit
fi
cat /usr/local/etc/fido/config | grep EchoArea | sed "s|\/home\/fido\/msgbasedir/|\\\home\\\fido\\\msgbasedir\\\|g" > /home/fido/config.unx
