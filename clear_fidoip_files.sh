#!/bin/sh
#! This script will clear fidoip installation from your computer
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`

T1="root"
T2="Linux"
T3="DragonFly"
Z1=""

if [ "$T2" = "$OSNAME" ]; then
Z1="LNXLAYOUT"
fi

if [ "$T3" = "$OSNAME" ]; then
Z1="LNXLAYOUT"
fi



if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

if [ "$Z1" = "LNXLAYOUT" ]; then
echo  ''
else
echo 'Please run this script on a Linux or DragonFly BSD' ; exit
fi

echo
echo "Are you sure to delete fidoip installation files?"
echo "If you will select 'y' you will not able use fidoip at all..."
echo "[y/n]"
read reply
echo ""  
if [ "$reply" = "y" ];
        then 
rm -rf /usr/local/bin/binkd_monthly_stat.sh
rm -rf /usr/local/bin/binkdstat.pl
rm -rf /usr/local/bin/binkd_weekly_stat.sh
rm -rf /usr/local/bin/binkd_yesterday_stat.sh
rm -rf /usr/local/bin/export_arealist_to_windows.sh
rm -rf /usr/local/bin/g
rm -rf /usr/local/bin/ge
rm -rf /usr/local/bin/gl
rm -rf /usr/local/bin/hpt_area.pl
rm -rf /usr/local/bin/hpt_info.sh
rm -rf /usr/local/bin/hpt_log.pl
rm -rf /usr/local/bin/import_arealist_from_windows.sh
rm -rf /usr/local/bin/linkarea_stat.sh
rm -rf /usr/local/bin/nodelist.sh
rm -rf /usr/local/bin/recv
rm -rf /usr/local/bin/save_arealist.sh
rm -rf /usr/local/bin/send
rm -rf /usr/local/bin/stat-binkd.pl

rm -rf /usr/local/doc/binkd-1.0.0
rm -rf /usr/local/doc/fidoip
rm -rf /usr/local/doc/golded-1.1.5-b
rm -rf /usr/local/doc/husky-1.4.rc5

rm -rf /usr/local/etc/binkd.cfg
rm -rf /usr/local/etc/binkd.conf-dist
rm -rf /usr/local/etc/fido
rm -rf /usr/local/etc/golded+
rm -rf /usr/local/etc/fidoip

rm -rf /usr/local/include/fidoconf
rm -rf /usr/local/include/smapi

rm -rf /usr/local/lib/libfidoconfig.*
rm -rf /usr/local/lib/libsmapi.*

rm -rf /usr/local/doc/golded*
rm -rf /usr/local/doc/binkd*
rm -rf /usr/local/doc/ee

rm -rf /usr/local/sbin/binkd
rm -rf /usr/local/sbin/bsopack
rm -rf /usr/local/sbin/fconf2aquaed
rm -rf /usr/local/sbin/fconf2areasbbs
rm -rf /usr/local/sbin/fconf2binkd
rm -rf /usr/local/sbin/fconf2fidogate
rm -rf /usr/local/sbin/fconf2golded
rm -rf /usr/local/sbin/fconf2msged
rm -rf /usr/local/sbin/fconf2na.pl
rm -rf /usr/local/sbin/fconf2squish
rm -rf /usr/local/sbin/fconf2tornado
rm -rf /usr/local/sbin/fecfg2fconf
rm -rf /usr/local/sbin/gedlnx
rm -rf /usr/local/sbin/gnlnx
rm -rf /usr/local/sbin/hpt*
rm -rf /usr/local/sbin/hpucode
rm -rf /usr/local/sbin/htick
rm -rf /usr/local/sbin/linked
rm -rf /usr/local/sbin/linkedto
rm -rf /usr/local/sbin/nlcrc
rm -rf /usr/local/sbin/nldiff
rm -rf /usr/local/sbin/nlupdate
rm -rf /usr/local/sbin/pktinfo
rm -rf /usr/local/sbin/rddtlnx
rm -rf /usr/local/sbin/sqpack
rm -rf /usr/local/sbin/tparser
rm -rf /usr/local/sbin/txt2pkt
rm -rf /usr/local/sbin/ulc

rm -rf /usr/local/man/man1/bsopack.1.gz
rm -rf /usr/local/man/man1/hpt*.gz
rm -rf /usr/local/man/man1/hpucode.1.gz
rm -rf /usr/local/man/man1/htick.1
rm -rf /usr/local/man/man1/pktinfo.1.gz
rm -rf /usr/local/man/man1/sqpack.1.gz
rm -rf /usr/local/man/man1/txt2pkt.1.gz

rm -rf /usr/local/share/man/man8/binkd.8

rm -rf /usr/local/man/man1/htick*
rm -rf /usr/local/share/man/bsopack.1.gz
rm -rf /usr/local/share/man/hpt*.gz
rm -rf /usr/local/share/man/hpucode.1.gz
rm -rf /usr/local/share/man/htick.1
rm -rf /usr/local/share/man/pktinfo.1.gz
rm -rf /usr/local/share/man/sqpack.1.gz
rm -rf /usr/local/share/man/txt2pkt.1.gz



echo "fidoip is removed from your computer"

elif [ "$reply" = "n" ];
        then 
echo "Installation of fidoip leaved as is."

fi

