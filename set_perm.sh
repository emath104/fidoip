#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Usage:  set_perm.sh login
CWD=`pwd`
OSNAME=`uname -s`
USERNAME=`whoami`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"
T2="Linux"


if [ ! -z "$2" ]; then
echo "Use 1 argument only. Usage: set_perm.sh login" ; exit
fi

if [ ! -z "$1" ]
then
VAR_01=$1
else
  echo " To set proper permissions and ownship you need type you login name as argument. Usage: set_perm.sh login" ; exit
fi

echo ""
if [ -e /home/$VAR_01  ]; then
echo  "Found /home/"$VAR_01" home directory of user "$VAR_01""
else
if [ -e /$VAR_01  ]; then
echo
else
echo "Home directory of user "$VAR_01" doesn't exist. If your login is "$VAR_01" then your home directory should be in /home/"$VAR_01"." ; exit
fi
fi

if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

f1()

{

if [ -e /usr/local/bin/toss ]; then

echo "Tossing welcome and test messages"
/usr/local/bin/toss 

fi

echo ''
echo '-----------------------------------------------------'
echo "Setting ownship and permission...                    "
echo '-----------------------------------------------------'
echo ''

mkdir -p /var/run/binkd                                                            
chown -R "$VAR_01":  /var/run/binkd

chmod -R 755 /home/fido
chmod -R 755 /usr/local/etc/fidoip
chmod -R 755 /usr/local/etc/golded+
chmod -R 755 /usr/local/etc/fido
chmod 755 /usr/local/bin/recv
chmod 755 /usr/local/bin/send

chown "$VAR_01": /usr/local/etc/binkd.cfg
chown -R "$VAR_01": /home/fido
chown -R "$VAR_01": /usr/local/etc/fidoip
chown "$VAR_01": /usr/local/bin/recv
chown "$VAR_01": /usr/local/bin/send
chown -R "$VAR_01": /usr/local/etc/fido
chown -R "$VAR_01": /usr/local/etc/golded+

if [ -e /usr/local/bin/toss ]; then
chown "$VAR_01": /usr/local/bin/toss
fi

chmod 755 /usr/local/bin/rs
chown "$VAR_01": /usr/local/bin/rs

if [ "$T2" = "$OSNAME" ]; then

if [ -e /usr/local/bin/poll ];then
chmod 755 /usr/local/bin/poll
chown "$VAR_01": /usr/local/bin/poll
chmod 755 /usr/local/bin/hptlogstat.pl
chown "$VAR_01": /usr/local/bin/hptlogstat.pl
chmod 755 /usr/local/bin/st_htick.pl
chown "$VAR_01": /usr/local/bin/st_htick.pl
chmod 755 /usr/local/bin/hptlogstat.pl
chown "$VAR_01": /usr/local/bin/hptlogstat.pl
chmod 755 /usr/local/bin/st_htick.pl
chown "$VAR_01": /usr/local/bin/st_htick.pl
chmod 755  /usr/local/bin/clean_outb
chown "$VAR_01":  /usr/local/bin/clean_outb
chmod 755 /usr/local/bin/fidohelp
fi

echo ''
if [ -e /usr/local/bin/binkdsrv ]; then
echo 
echo "Starting command to up binkd service:"
echo "/usr/local/bin/binkdsrv start"
echo
sed -i "5s/username2change"/"$VAR_01""/" /usr/local/bin/binkdsrv
/usr/local/bin/binkdsrv restart 2>/dev/null
echo
fi
fi

echo ''
echo '-----------------------------------------------------'
echo "Ownship and permission for user "$VAR_01" are setted!"
echo '-----------------------------------------------------'
echo ''

echo ''
echo "============================================================================="
echo "Installation fidoip for user "$VAR_01" is ready!"
echo "============================================================================="
echo ''
echo "Login as your login "$VAR_01" and use "recv" script for receiving, "send" "
echo "script for sending FIDONet messages. To read, write new messages or reply you"
echo "need run Golded Editor under same login run "ge" script if you use KOI8-R" 
echo "encoding or if you are use UTF-8 terminals with translation of enconding."
echo "For UTF-8 terminals you may use "g" or "gl" scripts as you preferance." 
echo "All these scripts are in /usr/local/bin/ directory." 
echo ''

if [ -e /usr/local/bin/binkdsrv ];then
chmod 755 /usr/local/bin/fidohelp
fidohelp
else
cp -p node/fidohelp /usr/local/bin/
chmod 755 /usr/local/bin/fidohelp
cat golded/fidohelp.hlp | sed "s/User/$VAR_01/" > /home/fido/fidohelp.hlp
fidohelp
fi


} 
f1 "${VAR_01}"
#End of set_perm.sh
