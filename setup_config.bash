#!/bin/bash
# Usage:  bash setup_config.bash
# Bash only!!! Do not use sh interpretator
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

# Declaration of allowed symbol for user input scrubbing
declare -r AllowedChars="1234567890/., :-abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

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

tar -cf tar -cf $CWD/$shortname /usr/local/etc/binkd.cfg /usr/local/etc/golded+/g* /usr/local/etc/fido/config /usr/local/bin/recv /usr/local/bin/send > /dev/null 2>&1
sleep 3 
fi

mkdir -p /usr/local/etc/fidoip/
cp -p /usr/local/etc/fidoip/binkd.cfg.template /usr/local/etc/binkd.cfg
cp -p /usr/local/etc/fidoip/config.template  /usr/local/etc/fido/config
cp -p /usr/local/etc/fidoip/decode.txt.template /usr/local/etc/golded+/golded.cfg
cp -p /usr/local/etc/fidoip/recv.template /usr/local/bin/recv
cp -p /usr/local/etc/fidoip/send.template /usr/local/bin/send


if [ "$T2" = "$OSNAME" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is Linux.'

sed -i "2s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "4s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "34s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "67s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/fido/config
sed -i "1s/Vasiliy\ Pampasov"/"$fullname1""/" /usr/local/etc/golded+/golded.cfg

sed -i "6s/Falcon"/"$stationname1""/" /usr/local/etc/binkd.cfg


sed -i "7s/Moscow"/"$locationname1""/" /usr/local/etc/binkd.cfg
sed -i "7s/$locationname1"/"$locationname2""/" /usr/local/etc/binkd.cfg


sed -i "5s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/binkd.cfg
sed -i "6s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "11s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "70s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
sed -i "71s/2:5020\/828.555"/"$ftnaddress1""/" /usr/local/etc/fido/config
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

sed -i "81s/a828"/"a$nodeaddress""/" /usr/local/etc/golded+/golded.cfg
sed -i "82s/a828"/"a$nodeaddress""/" /usr/local/etc/golded+/golded.cfg
sed -i "96s/828\.local"/"$nodeaddress"\.local"/" /usr/local/etc/golded+/golded.cfg


sed -i "9s/Kirill\ Temnenkov"/"$uplinkname1""/" /usr/local/etc/fido/config
sed -i "8s/Kirill_Temnenkov"/"$uplinkname2""/" /usr/local/etc/binkd.cfg

sed -i "33s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/binkd.cfg

sed -i "10s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "19s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "40s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "41s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "42s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "43s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config
sed -i "44s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/fido/config

sed -i "69s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg
sed -i "82s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/etc/golded+/golded.cfg

sed -i "6s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/recv
sed -i "8s/2:5020\/828"/"$uplinkftnaddress1""/" /usr/local/bin/send


sed -i "33s/temnenkov.dyndns.org"/$uplinkdnsaddress"/" /usr/local/etc/binkd.cfg

sed -i "33s/12345678"/$uplinkpassword"/" /usr/local/etc/binkd.cfg
sed -i "82s/12345678"/"$uplinkpassword""/" /usr/local/etc/golded+/golded.cfg
sed -i "12s/12345678"/$uplinkpassword"/" /usr/local/etc/fido/config

# Fixing netmailarea scanning bug for hpt x86_64  
if [ "$MACHINE" = "x86_64" ]; then
sed -i "31s/netmailarea\ -b\ msg"/netmail\ -b\ squish"/" /usr/local/etc/fido/config
sed -i "95s/netmailarea"/"netmail""/" /usr/local/etc/golded+/golded.cfg
fi


echo "OK. Original configuration files modified successfully."
echo "Please review configuration files."  
fi

if [ "$T3" = "$OSNAME" ]; then
echo ''
echo 'Detecting OS...'
echo 'Your OS is FreeBSD.'

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

sed "81s/a828"/"a$nodeaddress""/" /tmp/golded.cfg11 > /tmp/golded.cfg12
sed "82s/a828"/"a$nodeaddress""/" /tmp/golded.cfg12 > /tmp/golded.cfg13
sed "96s/828\.local"/"$nodeaddress"\.local"/" /tmp/golded.cfg13 > /tmp/golded.cfg14


sed "9s/Kirill\ Temnenkov"/"$uplinkname1""/" /tmp/config5 > /tmp/config6
sed "8s/Kirill_Temnenkov"/"$uplinkname2""/" /tmp/binkd.cfg4 > /tmp/binkd.cfg5

sed "33s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/binkd.cfg5 > /tmp/binkd.cfg6

sed "10s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config6 > /tmp/config7
sed "19s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config7 > /tmp/config8
sed "40s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config8 > /tmp/config9
sed "41s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config9 > /tmp/config10
sed "42s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config10 > /tmp/config11
sed "43s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config11 > /tmp/config12
sed "44s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/config12 > /tmp/config13

sed "69s/2:5020\/828"/"$uplinkftnaddress1""/" /tmp/golded.cfg14 > /tmp/golded.cfg15
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

sed "103s/2:5020\/828.555"/"$ftnaddress1""/" /tmp/golded.cfg17 > /tmp/golded.cfg18

cat /tmp/config17 > /usr/local/etc/fido/config
cat /tmp/golded.cfg18 > /usr/local/etc/golded+/golded.cfg
cat /tmp/binkd.cfg8 > /usr/local/etc/binkd.cfg
cat /tmp/recv1 > /usr/local/bin/recv
cat /tmp/send1 > /usr/local/bin/send

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
fi


elif [ "$reply" = "n" ];
	then 
echo "Please modify configuration files manually or run this script again."

fi
