#!/bin/bash
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Usage:  bash ./clear_cyrillic.bash
# Bash only!!! Do not use sh interpretator
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
MACHINE=`uname -m`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"

if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi


echo "--------------------------------------------------------------------"
echo ""
echo "This script will clear russian support in fidoip's configuration files for you."
echo ""
echo "--------------------------------------------------------------------"
echo ""

echo
echo "Are you sure to clear russian support from fidoip's configuration files?"
echo "If you will select 'y' you will not able use cyrillic characters at all..."
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

sed "s|\Б\е\з\д\у\м\н\ы\й\ \р\о\б\о\т|Stupid\ robot|" /usr/local/etc/fido/config > /tmp/config1
sed "s|XLAT|;XLAT|g" /usr/local/etc/golded+/golded.cfg > /tmp/golded.cfg1
sed "s|IGNORECHARSET|;IGNORECHARSET|" /tmp/golded.cfg1 > /tmp/golded.cfg2
sed "s|DispSoftCr|;DispSoftCr|" /tmp/golded.cfg2 > /tmp/golded.cfg3
sed "s|\А\ \в\ы\ \б\ы\ \и\с\к\у\с\с\т\в\о\м\ \з\а\н\я\л\и\с\ь\.\ \П\о\э\з\и\е\й\,\ что\ ли|And\ you\ would\ be\ better\ to\ engaged\ in\ art\.\ Poetry\,\ for\ example|" /tmp/golded.cfg3 > /tmp/golded.cfg4
sed "s|\М\у\р\а\в\ь\и\н\ы\м\ \с\п\и\р\т\о\м\ \с\о\в\е\т\у\ю\ \н\а\т\е\р\е\т\ь|Advising\ to\ rub\ down\ ant\'s\ alcohol|" /tmp/golded.cfg4 > /tmp/golded.cfg5
sed "s|EditSoftCrXLat|;EditSoftCrXLat|" /tmp/golded.cfg5 > /tmp/golded.cfg6 
sed "s|EditCompletion|;EditCompletion|" /tmp/golded.cfg6 > /tmp/golded.cfg7
sed "s|\H\а\ч\а\л\о\ \ф\а\й\л\а|Begin\ file|" /tmp/golded.cfg7 > /tmp/golded.cfg8
sed "s|\К\о\н\е\ц\ \ф\а\й\л\а|End\ file|" /tmp/golded.cfg8 > /tmp/golded.cfg9
sed "s|\О\с\н\о\в\н\о\й\ \ш\а\б\л\о\н|Main\ template|" /tmp/golded.cfg9 > /tmp/golded.cfg10
sed "s|\П\о\ч\т\а|Mail|" /tmp/golded.cfg10 > /tmp/golded.cfg11
sed "s|\Т\у\т\ \л\о\к\а\л\к\а\ \у\ \н\а\с\ \п\р\о\с\т\а\я|Local\ area|" /tmp/golded.cfg11 > /tmp/golded.cfg12
sed "s|\Д\у\п\л\и\ \у\ \н\а\с\ \в\т\о\р\ы\е|Dupes\ area|" /tmp/golded.cfg12 > /tmp/golded.cfg13
sed "s|\А \к\о\с\я\к\и\ -\ \к\р\и\в\ы\е|Bad\ area|" /tmp/golded.cfg13 > /tmp/golded.cfg14
sed "s|\К\а\р\б\о\н\к\а\ \н\е\ \п\у\с\т\а\я|Carbon\ area|" /tmp/golded.cfg14 > /tmp/golded.cfg15
sed "s|\С\п\р\о\с\и\т\ь\ \п\о\л\ь\з\о\в\а\т\е\л\я|Ask\ user|" /tmp/golded.cfg15 > /tmp/golded.cfg16
sed "s|\П\о\л\у\ч\е\н\н\о\е\ \с|Recieved\ from|" /tmp/golded.cfg16 > /tmp/golded.cfg17

sed "/\Л\и\н\у\к\с/d" /tmp/golded.cfg17 > /tmp/golded.cfg18
sed "/\Б\э\Э\с\Д\э\ш\н\и\к\и/d" /tmp/golded.cfg18 > /tmp/golded.cfg19
sed "/\И\з\\м\е\н\и\т\е/d" /tmp/golded.cfg19 > /tmp/golded.cfg20
sed "/\С\к\о\п\и\р\у\й\т\е/d" /tmp/golded.cfg20 > /tmp/golded.cfg21
sed "/\г\е\н\е\р\а\ц\и\и/d" /tmp/golded.cfg21 > /tmp/golded.cfg22
sed "/\п\р\и\в\е\т\в\о\в\а\т\ь/d" /tmp/golded.cfg22 > /tmp/golded.cfg23
sed "/\М\а\к\р\о\с/d" /tmp/golded.cfg23 > /tmp/golded.cfg24
sed "/\с\о\к\р\а\щ\е\н\и\я/d" /tmp/golded.cfg24 > /tmp/golded.cfg25
sed "/\Д\о\б\а\в\л\е\н\и\е/d" /tmp/golded.cfg25 > /tmp/golded.cfg26
sed "/\к\н\и\г\у/d" /tmp/golded.cfg26 > /tmp/golded.cfg27
sed "/\П\р\о\с\м\о\т\р/d" /tmp/golded.cfg27 > /tmp/golded.cfg28
sed "/\О\п\и\с\а\н\и\я/d"  /tmp/golded.cfg28 > /tmp/golded.cfg29

cat /tmp/config1 > /usr/local/etc/fido/config
cat /tmp/golded.cfg29 > /usr/local/etc/golded+/golded.cfg

if [ -e /usr/local/etc/golded+/goldlang.cfg ];then
mv /usr/local/etc/golded+/goldlang.cfg /usr/local/etc/golded+/goldlang.cfg.rus
fi

cp /usr/local/etc/fidoip/golded.cfm.eng /usr/local/etc/golded+/golded.cfm
cp /usr/local/etc/fidoip/golded.tpl.eng /usr/local/etc/golded+/golded.tpl
cp /usr/local/etc/fidoip/goldhelp.cfg.eng /usr/local/etc/golded+/goldhelp.cfg

rm -rf /tmp/config*
rm -rf /tmp/golded.cfg*

echo "OK. Original configuration files modified successfully."
echo "Please review configuration files."  


elif [ "$reply" = "n" ];
	then 
echo "Support of russian language leaved as is."

fi
