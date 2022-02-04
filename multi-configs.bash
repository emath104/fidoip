#!/bin/bash
# usage: multi-configs.bash login install_number
# Script which allow change default fidoip /home/fido/ directory to /home/your_login/fido
# or make multiply fidoip's configurations for multiply users to work at one PC.
# Works only on FreeBSD and Linux
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
# Declaration of allowed symbol for user input scrubbing
declare -r AllowedChars="1234567890"
T1="root"


if [ ! -z "$3" ]; then
echo "Use 2 argument only. Usage: ./multi-configs.bash login install_number" ; exit
fi

if [ ! -z "$2" ]
then
VAR_02=$2
# Checking user input&scrubbing
ScrubbedCheck="${VAR_02//[^$AllowedChars]/}"
if [ "$VAR_02" = "$ScrubbedCheck" ]; then
echo  ''
else
echo ' '
echo " Error. Second argument should be a number only! Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

else
  echo "Use 2 argument only. Usage: ./multi-configs.bash login install_number" ; exit
fi
if [ ! -z "$1" ]
then
VAR_01=$1
else
  echo "Use 2 argument only. Usage: ./multi-config login install_number" ; exit
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
            
cp -R /home/fido /home/$VAR_01/
echo ''
echo '------------------------------------------------------------------------'
echo " Fido databases copied from /home/fido/ to /home/"$VAR_01"/fido...      "
echo '------------------------------------------------------------------------'
echo ''
sleep 3

cp -R /usr/local/etc /usr/local/etc"$VAR_02"

echo ''
echo '------------------------------------------------------------------------'
echo " Configs of fidoip copied from /usr/local/etc to /usr/local/etc"$VAR_02""
echo '------------------------------------------------------------------------'
echo ''
sleep 3

sed "s|\/home\/fido|\/home\/"$VAR_01"\/fido|g" /usr/local/etc/fido/config > /usr/local/etc"$VAR_02"/fido/config
sed "s|\/home\/fido|\/home\/"$VAR_01"\/fido|g" /usr/local/etc/binkd.cfg > /usr/local/etc"$VAR_02"/binkd.cfg
sed "s|\/home\/fido|\/home\/"$VAR_01"\/fido|g" /usr/local/etc/golded+/golded.cfg > /usr/local/etc"$VAR_02"/golded+/golded.cfg1
sed "s|local\/etc|local\/etc"$VAR_02"|g" /usr/local/etc"$VAR_02"/golded+/golded.cfg1 > /usr/local/etc"$VAR_02"/golded+/golded.cfg
rm /usr/local/etc"$VAR_02"/golded+/golded.cfg1

echo ''
echo '-------------------------------------------------'
echo " Path in fidoip's configs changing ....  OK, DONE!"
echo '-------------------------------------------------'
echo ''
sleep 3

chmod -R +x /home/$VAR_01/fido/
chmod -R +x /usr/local/etc"$VAR_02"/
chown -R "$VAR_01" /home/$VAR_01/fido/
chown -R "$VAR_01" /usr/local/etc"$VAR_02"/

echo ''
echo '--------------------------------------------------------'
echo " Permission for /home/"$VAR_01"/fido and "
echo " /usr/local/etc"$VAR_02" for user "$VAR_01" are setted!"
echo '-------------------------------------------------------'
echo ''
sleep 3

sed "s|etc|etc"$VAR_02"|g" /usr/local/bin/recv > /usr/local/bin/recv"$VAR_02"
sed "s|etc|etc"$VAR_02"|g" /usr/local/bin/send > /usr/local/bin/send"$VAR_02"
sed "s|etc|etc"$VAR_02"|g" /usr/local/bin/ge > /usr/local/bin/ge"$VAR_02"
sed "s|bin\/ge|bin\/ge"$VAR_02"|g" /usr/local/bin/g > /usr/local/bin/g"$VAR_02"
sed "s|bin\/ge|bin\/ge"$VAR_02"|g" /usr/local/bin/gl > /usr/local/bin/gl"$VAR_02"

chmod +x /usr/local/bin/recv"$VAR_02" /usr/local/bin/send"$VAR_02" /usr/local/bin/ge"$VAR_02" /usr/local/bin/g"$VAR_02" /usr/local/bin/gl"$VAR_02"

echo ''
echo '----------------------------------------------------------------------'
echo "Scripts recv, send, ge, g, gl in /usr/local/bin...  copied           "
echo "as recv"$VAR_02", send"$VAR_02", ge"$VAR_02", g"$VAR_02", gl"$VAR_02"  "
echo '-----------------------------------------------------------------------'
echo ''

echo ''
echo '----------------------------------------------------------------------'
echo "OK! Let user "$VAR_01" to access to his fido use the only     "
echo "scripts  recv"$VAR_02", send"$VAR_02", ge"$VAR_02", g"$VAR_02" and gl"$VAR_02"  "
echo '-----------------------------------------------------------------------'
echo ''


} 
f1 "${VAR_01}"
#End of multi-config
