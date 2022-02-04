#!/bin/sh
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
date=`date +%Y%m%d%m%s`

T1="root"
T2="Linux"
T3="FreeBSD"

if [ "$T1" = "$USERNAME" ]; then
echo  'Please do not run this script as root' ; exit
fi

if [ "$T2" = "$OSNAME" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is Linux.'
echo 'Updating golded nodelist index.'
/usr/local/sbin/gnlnx -C /usr/local/etc/golded+/golded.cfg
fi

if [ "$T3" = "$OSNAME" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is FreeBSD.'
echo 'Updating golded nodelist index.'
/usr/local/bin/goldnode -C /usr/local/etc/golded+/golded.cfg
fi

