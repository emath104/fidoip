#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then 
echo  'Please do not run this script as root' ; exit
fi
cat /usr/local/etc/fido/config | grep EchoArea  > /home/fido/hpt.area
