#!/bin/sh
USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then 
echo  'Please do not run this script as root' ; exit
fi
perl /usr/local/bin/stat-binkd.pl -l /home/fido/binkd.log -s -1w +7d

