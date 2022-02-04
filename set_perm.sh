#!/bin/sh
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
echo "Home directory of user "$VAR_01" doesn't exist. If your login is "$VAR_01" then your home directory should be in /home/"$VAR_01"." ; exit
fi

if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

f1()

{


echo ''
echo '-----------------------------------------------------'
echo "Setting ownship and permission...                    "
echo '-----------------------------------------------------'
echo ''

if [ -e /home/"$VAR_01"/.screenrc ]; then
C1=`cat  /home/$VAR_01/.screenrc | grep encoding | head -n1 | sed "s| ||g"`
if [ "$C1" = "encodingutf8" ]; then
echo "Found /home/"$VAR_01"/.screenrc file with key bindings for screen."
sleep 3
else
cat $CWD/binkd/.screenrc >> /home/$VAR_01/.screenrc
fi
else
cat $CWD/binkd/.screenrc > /home/$VAR_01/.screenrc
fi

mkdir -p /var/run/binkd                                                            
chown -R "$VAR_01":  /var/run/binkd

chmod -R +x /home/fido
chmod -R +x /usr/local/etc/fidoip
chmod -R +x /usr/local/etc/golded+
chmod -R +x /usr/local/etc/fido
chmod +x /usr/local/bin/recv
chmod +x /usr/local/bin/send

chown "$VAR_01": /usr/local/etc/binkd.cfg
chown -R "$VAR_01": /home/fido
chown -R "$VAR_01": /usr/local/etc/fidoip
chown "$VAR_01": /home/$VAR_01/.screenrc
chown "$VAR_01": /usr/local/bin/recv
chown "$VAR_01": /usr/local/bin/send
chown -R "$VAR_01": /usr/local/etc/fido
chown -R "$VAR_01": /usr/local/etc/golded+

echo ''
echo '-----------------------------------------------------'
echo "Ownship and permission for user "$VAR_01" are setted!"
echo '-----------------------------------------------------'
echo ''

if [ "$T2" = "$OSNAME" ]; then
echo ''

if [ -e /etc/rc.d ]; then
 cat $CWD/binkd/binkd.initbsd-style > /etc/rc.d/binkd
 sed -i "6s/username2change"/"$VAR_01""/" /etc/rc.d/binkd
 echo 'Found BSD style init-scripts. Script for staring binkd'
 echo 'daemon copied to /etc/rc.d/binkd. If you would like to'
 echo 'acivate binkd daemon set permission before:'
 echo 'chmod +x /etc/rc.d/binkd'
fi

echo ''

if [ -e /etc/init.d ]; then
 cat $CWD/binkd/binkd.initatt-style > /etc/init.d/binkd
 sed -i "6s/username2change"/"$VAR_01""/" /etc/init.d/binkd
 echo 'Found AT&T style init-scripts. Script for staring binkd'
 echo 'daemon copied to /etc/init.d/binkd. If you would like to'
 echo 'acivate binkd daemon set permission before:'
 echo 'chmod +x /etc/init.d/binkd'
fi

if [ -e /etc/arch-release ]; then
 cat $CWD/binkd/binkd.initArchLinux > /etc/rc.d/binkd
 sed -i "6s/username2change"/"$VAR_01""/" /etc/rc.d/binkd
fi

echo ''

fi

} 
f1 "${VAR_01}"
#End of set_perm.sh
