#!/bin/bash
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */
# Usage:  bash ./setup_config.bash
# Bash only!!! Do not use sh interpretator

# Script for creation FIDONet IP point configuration

CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
MACHINE=`uname -m`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"
T2="Linux"
T3="FreeBSD"
T4="DragonFly"

if [ "$OSNAME" = "$T3" ]; then
Z1="BSD"
fi

if [ "$OSNAME" = "$T4" ]; then
Z1="BSD"
Z2="PKGSRC"
fi


# Declaration of allowed symbol for user input scrubbing
declare -r AllowedChars="-1234567890/., :-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi


echo "--------------------------------------------------------------------"
echo ""
echo "This script setup fidoip's configuration files for you."
echo ""
echo "--------------------------------------------------------------------"
echo ""


echo "Enter your first and last name and press [ENTER]."
echo -n "Sample -  Vasiliy Pampasov: "
read fullname

if [ -z "$fullname" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck="${fullname//[^$AllowedChars]/}"
if [ "$fullname" = "$ScrubbedCheck" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

# Inserting \ before space
#echo  "$fullname" | sed 's_ _\\ _g' > /tmp/fidoiptmp
echo  "$fullname" | sed 's/ /\\ /g' > /tmp/fidoiptmp
fullname1=`cat /tmp/fidoiptmp`

# Inserting space instead of space

echo  "$fullname" | sed 's/ /\_/g' > /tmp/fidoiptmp
fullname2=`cat /tmp/fidoiptmp`


echo "Enter your station name and press[ENTER]."
echo -n "Sample -  MyStation: "
read stationname

if [ -z "$stationname" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck1="${stationname//[^$AllowedChars]/}"
if [ "$stationname" = "$ScrubbedCheck1" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

# Inserting _ instead space
echo  "$stationname" | sed 's/ /\_/g' > /tmp/fidoiptmp
stationname1=`cat /tmp/fidoiptmp`


echo "Enter your location and press[ENTER]."
echo -n "Sample -  Moscow, Russia: "
read locationname
if [ -z "$locationname" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck2="${locationname//[^$AllowedChars]/}"
if [ "$locationname" = "$ScrubbedCheck2" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

# Inserting _ instead space
echo  "$locationname" | sed 's/ /\_/g' > /tmp/fidoiptmp
locationname1=`cat /tmp/fidoiptmp`

# Inserting space instead -
echo  "$locationname1" | sed 's/_/\ /g' > /tmp/fidoiptmp
locationname2=`cat /tmp/fidoiptmp`

# Deleting spaces


echo  "$locationname" | sed 's/\ //g' > /tmp/fidoiptmp
locationname3=`cat /tmp/fidoiptmp`

# Deleting ,
echo  "$locationname3" | sed 's/\,//g' > /tmp/fidoiptmp
locationname4=`cat /tmp/fidoiptmp`


echo "Enter your FTN address and press [ENTER]."
echo -n "Sample -  2:5020/828.555: "
read ftnaddress
if [ -z "$ftnaddress" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck3="${ftnaddress//[^$AllowedChars]/}"
if [ "$ftnaddress" = "$ScrubbedCheck3" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi


# Select zone number
zonenumber=`echo  "$ftnaddress" | sed 's|\:.*||'`

# Inserting \ before / in a FTN address
echo  "$ftnaddress" | sed 's|/|\\/|g' > /tmp/fidoiptmp
ftnaddress1=`cat /tmp/fidoiptmp`

# Deleting everting before / and /
echo  "$ftnaddress" | sed 's/.*\///' > /tmp/fidoiptmp
pointaddress=`cat /tmp/fidoiptmp`
# Deleting everithing after .
echo  "$pointaddress" | sed 's/\..*//' > /tmp/fidoiptmp
nodeaddress=`cat /tmp/fidoiptmp`

echo -e "Enter uplink full name and press press [ENTER]."
echo -n "Sample -  Kirill Temnenkov: "
read uplinkname
if [ -z "$uplinkname" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck4="${uplinkname//[^$AllowedChars]/}"
if [ "$uplinkname" = "$ScrubbedCheck4" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

# Inserting \ before space
echo  "$uplinkname" | sed 's/ /\\ /g' > /tmp/fidoiptmp
uplinkname1=`cat /tmp/fidoiptmp`



# Changing all space to _ 
echo  "$uplinkname" | sed 's/ /\_/g' > /tmp/fidoiptmp
uplinkname2=`cat /tmp/fidoiptmp`


echo -e "Enter uplink FTN address and press [ENTER]."
echo -n "Sample -  2:5020/828: "
read uplinkftnaddress
if [ -z "$uplinkftnaddress" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck5="${uplinkftnaddress//[^$AllowedChars]/}"
if [ "$uplinkftnaddress" = "$ScrubbedCheck5" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

# Inserting \ before space
echo  "$uplinkftnaddress" | sed 's|/|\\/|g' > /tmp/fidoiptmp
uplinkftnaddress1=`cat /tmp/fidoiptmp`


echo "Enter uplink server name or IP-address and press [ENTER]."
echo -n "Sample -  temnenkov.dyndns.org: "
read uplinkdnsaddress
if [ -z "$uplinkdnsaddress" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck6="${uplinkdnsaddress//[^$AllowedChars]/}"
if [ "$uplinkdnsaddress" = "$ScrubbedCheck6" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi


echo "Enter uplink password and press [ENTER]."
echo -n "Sample -  12345678: " 
read uplinkpassword
if [ -z "$uplinkpassword" ]
then
echo 'You input nothing.'
echo 'Please run this script again and input something.'
exit
fi

# Checking user input&scrubbing
ScrubbedCheck7="${uplinkpassword//[^$AllowedChars]/}"
if [ "$uplinkpassword" = "$ScrubbedCheck7" ]; then
echo  ''
else
echo ' '
echo " Error. You entered wrong symbols. Allowed symbols are: "
echo -n ' '
echo -n ""$AllowedChars""
echo -n '               '
echo 'Please run this script again and be more carefull during inputing.'
echo -n '               '
exit
fi

echo "Whould you like to disable FGHI URLs in headers of messages?(y/N)"
echo -n "Safe choice is not disable, press n or Enter:" 
read fghichoice
if [ -z "$fghichoice" ]
then
fghichoice="n"
fi

if [ "$fghichoice" = "n" ]
then
FGHI="Enabled"
fi

if [ "$fghichoice" = "y" ]
then
FGHI="Disabled"
fi

echo ""
echo "--------------------------------------------------------------------"
echo ""

echo -n "Your full name is : "
echo $fullname
echo -n "Your system station name : "
echo $stationname
echo -n "Your FTN address is: "
echo $ftnaddress
echo -n "Your location is : "
echo $locationname
echo -n "Uplink name is : "
echo $uplinkname
echo -n "Uplink FTN address is : "
echo $uplinkftnaddress
echo -n "Uplink server name or IP-address is: "
echo $uplinkdnsaddress
echo -n "Your password is: "
echo $uplinkpassword
echo -n "FGHI support for headers is: "
echo $FGHI

echo ""
echo "--------------------------------------------------------------------"
echo ""
# asks if you want to change the original files and acts accordingly.

echo "OK? "
echo "[y/n]"
read reply
echo ""  
if [ "$reply" = "y" ];
	then 

if [ -e /usr/local/etc/binkd.cfg ]; then
echo '------------------------------------------------------------------------'
echo 'Previos configuration files saved to file:'
echo ''
echo $CWD/$shortname
echo ''
echo '------------------------------------------------------------------------'
echo ''

tar -cf $CWD/$shortname /usr/local/etc/binkd.cfg /usr/local/etc/golded+/g* /usr/local/etc/fido/config /usr/local/bin/recv /usr/local/bin/send > /dev/null 2>&1
sleep 3 
fi

cp -p /usr/local/etc/fidoip/binkd.cfg.template /usr/local/etc/binkd.cfg
cp -p /usr/local/etc/fidoip/config.template  /usr/local/etc/fido/config
cp -p /usr/local/etc/fidoip/decode.txt.template /usr/local/etc/golded+/golded.cfg
cp -p /usr/local/etc/fidoip/recv.template /usr/local/bin/recv
cp -p /usr/local/etc/fidoip/send.template /usr/local/bin/send

if [ "$OSNAME" = "$T2" ]; then
fghichoice="y"
fi

if [ "$fghichoice" = "y" ]
then
cp /usr/local/etc/fidoip/golded.tpl.fghi.disable-template /usr/local/etc/golded+/golded.tpl
else
cp /usr/local/etc/fidoip/golded.tpl /usr/local/etc/golded+/golded.tpl
fi

if [ "$T2" = "$OSNAME" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is Linux.'

sed -i "2s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "3s/Moscow"/"$locationname4""/" /usr/local/etc/fido/config
sed -i "4s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "34s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "67s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "1s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/golded+/golded.cfg

sed -i "6s/Falcon"/"$stationname1""/" /usr/local/etc/binkd.cfg


sed -i "7s/Moscow"/"$locationname1""/" /usr/local/etc/binkd.cfg
sed -i "7s/$locationname1"/"$locationname2""/" /usr/local/etc/binkd.cfg


sed -i "5s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/binkd.cfg

sed -i "2s|ZONE-NUMBER|"$zonenumber"|" /usr/local/etc/binkd.cfg

sed -i "6s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "11s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "70s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "71s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "78s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "3s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "67s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "95s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "96s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "97s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "98s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "99s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "100s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "101s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "102s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "103s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "96s/828\.local"/"$nodeaddress"\.local"/" /usr/local/etc/golded+/golded.cfg
sed -i "96s/828\.local"/"$nodeaddress"\.local"/" /usr/local/etc/golded+/golded.cfg

sed -i "9s/Kirill\ Temnenkov"/"$uplinkname1""/" /usr/local/etc/fido/config
sed -i "8s/Kirill_Temnenkov"/"$fullname2""/" /usr/local/etc/binkd.cfg

sed -i "33s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/binkd.cfg

sed -i "10s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "19s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "40s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "41s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "42s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "43s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "44s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config

sed -i "68s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "69s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "80s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "81s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "82s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "83s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "6s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/recv
sed -i "8s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/send

sed -i "33s/temnenkov.dyndns.org"/$uplinkdnsaddress"/" /usr/local/etc/binkd.cfg

sed -i "33s/12345678"/$uplinkpassword"/" /usr/local/etc/binkd.cfg

sed -i "80s/12345678"/"$uplinkpassword""/" /usr/local/etc/golded+/golded.cfg
sed -i "81s/12345678"/"$uplinkpassword""/" /usr/local/etc/golded+/golded.cfg

sed -i "82s/12345678"/"$uplinkpassword""/" /usr/local/etc/golded+/golded.cfg
sed -i "83s/12345678"/"$uplinkpassword""/" /usr/local/etc/golded+/golded.cfg

sed -i "12s/12345678"/$uplinkpassword"/" /usr/local/etc/fido/config
sed -i "40s/828\.local"/"$nodeaddress"\.local"/" /usr/local/etc/fido/config
sed -i "40s/828\.local"/"$nodeaddress"\.local"/" /usr/local/etc/fido/config

# Set codepage of URL for ru_RU.KOI8-R  
if [ "$LANG" = "ru_RU.KOI8-R" ]; then
sed -i "s|t\ UTF-8|t\ KOI8R|" /usr/local/etc/golded+/golded.cfg
fi

cp node/toss /usr/local/bin/toss 
chmod 755 /usr/local/bin/toss

rm -f /usr/local/bin/binkdsrv

FIREFOXINST=`ls -A1 /usr/bin/firefox  2>/dev/null`
if [ "$FIREFOXINST" = "" ];
then
echo "/usr/bin/firefox not found."
echo "It is highly recommended install firefox if you would like to use URL"
echo "in GoldEd-NSF and hypertext support. If you using another browser define"
echo "it in the URLHANDLER in /usr/local/etc/golded+/golded.cfg"
sleep 5
fi

echo "OK. Original configuration files modified successfully."
echo "Please review configuration files."  
fi

if [ "$Z1" = "BSD" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is BSD-like.'

sed "2s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config > /tmp/config1
sed "4s/Vasiliy\ Pampasov"/"$fullname1""/" /tmp/config1 > /tmp/config2
sed "34s/Vasiliy\ Pampasov"/"$fullname1""/" /tmp/config2 > /tmp/config3
sed "1s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/golded+/golded.cfg > /tmp/golded.cfg1

sed "6s/Falcon"/"$stationname1""/" /usr/local/etc/binkd.cfg > /tmp/binkd.cfg1


sed "7s/Moscow"/"$locationname1""/" /tmp/binkd.cfg1 > /tmp/binkd.cfg2
sed "7s/$locationname1"/"$locationname2""/" /tmp/binkd.cfg2 > /tmp/binkd.cfg3


sed "5s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/binkd.cfg3 > /tmp/binkd.cfg4
sed "6s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/config3 > /tmp/config4
sed "11s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/config4 > /tmp/config5
sed "3s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg1 > /tmp/golded.cfg2
sed "67s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg2 > /tmp/golded.cfg3
sed "95s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg3 > /tmp/golded.cfg4
sed "96s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg4 > /tmp/golded.cfg5
sed "97s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg5 > /tmp/golded.cfg6
sed "98s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg6 > /tmp/golded.cfg7
sed "99s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg7 > /tmp/golded.cfg8
sed "100s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg8 > /tmp/golded.cfg9
sed "101s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg9 > /tmp/golded.cfg10
sed "102s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg10 > /tmp/golded.cfg11

sed "80s/12345678"/"$uplinkpassword""/" /tmp/golded.cfg11 > /tmp/golded.cfg12
sed "81s/12345678"/"$uplinkpassword""/" /tmp/golded.cfg12 > /tmp/golded.cfg13

sed "96s/828\.local"/"$nodeaddress"\.local"/" /tmp/golded.cfg13 > /tmp/golded.cfg14

sed "9s/Kirill\ Temnenkov"/"$uplinkname1""/" /tmp/config5 > /tmp/config6
sed "8s/Kirill_Temnenkov"/"$fullname2""/" /tmp/binkd.cfg4 > /tmp/binkd.cfg5

sed "33s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/binkd.cfg5 > /tmp/binkd.cfg6

sed "10s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config6 > /tmp/config7
sed "19s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config7 > /tmp/config8
sed "40s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config8 > /tmp/config9
sed "41s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config9 > /tmp/config10
sed "42s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config10 > /tmp/config11
sed "43s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config11 > /tmp/config12
sed "44s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config12 > /tmp/config13

sed "67s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg14 > /tmp/golded.cfg14-1
sed "69s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg14-1 > /tmp/golded.cfg15

sed "82s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg15 > /tmp/golded.cfg16

sed "6s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/recv > /tmp/recv1
sed "8s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/send > /tmp/send1


sed "33s/temnenkov.dyndns.org"/$uplinkdnsaddress"/" /tmp/binkd.cfg6 > /tmp/binkd.cfg7

sed "33s/12345678"/$uplinkpassword"/" /tmp/binkd.cfg7 > /tmp/binkd.cfg8
sed "82s/12345678"/"$uplinkpassword""/" /tmp/golded.cfg16 > /tmp/golded.cfg17
sed "12s/12345678"/$uplinkpassword"/" /tmp/config13 > /tmp/config14
sed "67s/Vasiliy\ Pampasov"/"$fullname1""/" /tmp/config14 > /tmp/config15
sed "70s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/config15 > /tmp/config16
sed "71s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/config16 > /tmp/config17
sed "40s/828\.local"/"$nodeaddress"\.local"/" /tmp/config17 > /tmp/config18
sed "40s/828\.local"/"$nodeaddress"\.local"/" /tmp/config18 > /tmp/config19
sed "3s/Moscow"/"$locationname4""/" /tmp/config19 > /tmp/config20
sed "78s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/config20 > /tmp/config21

sed "103s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg17 > /tmp/golded.cfg18
sed "96s/828\.local"/"$nodeaddress"\.local"/" /tmp/golded.cfg18 > /tmp/golded.cfg19

# Set codepage of URL for ru_RU.KOI8-R  
if [ "$LANG" = "ru_RU.KOI8-R" ]; then
sed "s|t\ UTF-8|t\ KOI8R|" /tmp/golded.cfg19 > /tmp/golded.cfg20
rm -rf /tmp/golded.cfg19
cp /tmp/golded.cfg20 /tmp/golded.cfg19 
fi

# Set Firefox browser for URLHANDLER  

sed "s|usr/bin/firefox|usr/local/bin/firefox|" /tmp/golded.cfg19 > /tmp/golded.cfg20


FIREFOXINST=`which firefox  2>/dev/null`
if [ "$FIREFOXINST" = "" ];
then
echo "Firefox not found."
echo "It is highly recommended install firefox port if you would like to use URL"
echo "in GoldEd-NSF and hypertext support.If you using another browser define"
echo "it in the URLHANDLER in /usr/local/etc/golded+/golded.cfg"
sleep 5
fi


sed "2s|ZONE-NUMBER|"$zonenumber"|" /tmp/binkd.cfg8  > /tmp/binkd.cfg9
cat /tmp/binkd.cfg9 > /tmp/binkd.cfg10

cat /tmp/recv1 > /usr/local/bin/recv
cat /tmp/send1 > /usr/local/bin/send

cat /usr/local/bin/gl > /tmp/gl1

cp node/toss.freebsd /usr/local/bin/toss
chmod +x /usr/local/bin/toss

if [ "$Z2" = "PKGSRC" ]; then

sed "s|\/usr\/local\/bin\/unzip|\/usr\/pkg\/bin\/unzip|" /tmp/config21 > /tmp/config22
rm -rf /tmp/config21
cat /tmp/config22 > /tmp/config21
sed "s|\/usr\/local\/bin\/firefox|\/usr\/pkg\/bin\/firefox|" /tmp/golded.cfg20 > /tmp/golded.cfg21
rm -rf /tmp/golded.cfg20
cat /tmp/golded.cfg21 > /tmp/golded.cfg20
sed "s|\/usr\/bin\/luit|\/usr\/pkg\/bin\/luit|" /tmp/gl1 > /tmp/gl2
rm -rf /tmp/gl1
cat /tmp/gl2 > /tmp/gl1 

cp node/toss /usr/local/bin/toss
chmod +x /usr/local/bin/toss

fi

sed "80s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg20 > /tmp/golded.cfg21
sed "81s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg21 > /tmp/golded.cfg22
sed "82s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg22 > /tmp/golded.cfg23
sed "83s/12345678"/"$uplinkpassword""/" /tmp/golded.cfg23 > /tmp/golded.cfg24

cat /tmp/binkd.cfg10 > /usr/local/etc/binkd.cfg
cat /tmp/config21 > /usr/local/etc/fido/config
cat /tmp/golded.cfg24 > /usr/local/etc/golded+/golded.cfg
cat /tmp/gl1 > /usr/local/bin/gl

if [ "$OSNAME" = "$T3" ]; then
cp golded/gl.freebsd /usr/local/bin/gl
chmod +x /usr/local/bin/gl
fi

echo "OK. Original configuration files modified successfully."
echo "Please review configuration files."  

fi

if [ -e /tmp/fidoiptmp ]; then
	rm /tmp/fidoiptmp
fi

if [ -e /tmp/binkd.cfg1 ]; then
	rm /tmp/binkd.cfg*
	rm /tmp/recv1
	rm /tmp/send1
	rm /tmp/config*
	rm /tmp/golded.cfg*
        rm /tmp/gl1
fi

cp golded/.screenrc /usr/local/etc/golded+/
cp /usr/local/bin/send /usr/local/bin/rs
chmod 755 /usr/local/bin/rs
chmod 755 /usr/local/bin/toss


sed "s|Vasiliy\ Pampasov|$fullname1|" $CWD/golded/welcome.tpl.template > /tmp/welcome.tpl1
sed "s|2:5020\/XXX|$uplinkftnaddress1|" /tmp/welcome.tpl1 > /tmp/welcome.tpl2
sed "s|Kirill\ Temnenkov|$uplinkname1|" /tmp/welcome.tpl2 > /tmp/welcome.tpl3
sed "s|2:5020\/YYY.ZZZ|$ftnaddress1|" /tmp/welcome.tpl3 > /tmp/welcome.tpl

echo
echo "Generating welcome message"
echo ""
export FIDOCONFIG=/usr/local/etc/fido/config

txt2pkt -nf "Developer of fidoip"  -xf "$ftnaddress"  -xt "$ftnaddress" -nt "$fullname" -t "Powered by fidoip package" -o "http://sourceforge.net/apps/mediawiki/fidoip" -s "Welcome, new point!" -e "welcome.fido" -d /home/fido/localinb /tmp/welcome.tpl

if [ -e /tmp/welcome.tpl ]; then
	rm -f /tmp/welcome.tpl*
fi



elif [ "$reply" = "n" ];
	then 
echo "Please modify configuration files manually or run this script again."

fi
