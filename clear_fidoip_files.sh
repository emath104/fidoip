#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

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

rm -f /usr/local/bin/binkd_monthly_stat.sh
rm -f /usr/local/bin/binkdstat.pl
rm -f /usr/local/bin/binkd_weekly_stat.sh
rm -f /usr/local/bin/binkd_yesterday_stat.sh
rm -f /usr/local/bin/export_arealist_to_windows.sh
rm -f /usr/local/bin/g
rm -f /usr/local/bin/ge
rm -f /usr/local/bin/gl
rm -f /usr/local/bin/hpt_area.pl
rm -f /usr/local/bin/hpt_info.sh
rm -f /usr/local/bin/hpt_log.pl
rm -f /usr/local/bin/import_arealist_from_windows.sh
rm -f /usr/local/bin/linkarea_stat.sh
rm -f /usr/local/bin/nodelist.sh
rm -f /usr/local/bin/recv
rm -f /usr/local/bin/save_arealist.sh
rm -f /usr/local/bin/send
rm -f /usr/local/bin/stat-binkd.pl
rm -f /usr/local/bin/addlink
rm -f /usr/local/bin/addpoint
rm -f /usr/local/bin/addread
rm -f /usr/local/bin/binkdsrv
rm -f /usr/local/bin/binkdstat.pl
rm -f /usr/local/bin/changeuplink
rm -f /usr/local/bin/clean_outb
rm -f /usr/local/bin/crontask.sh
rm -f /usr/local/bin/fido.dayly
rm -f /usr/local/bin/fido.monthly
rm -f /usr/local/bin/fpasswd
rm -f /usr/local/bin/hptlogstat.pl
rm -f /usr/local/bin/listecho
rm -f /usr/local/bin/listlink
rm -f /usr/local/bin/listpoint
rm -f /usr/local/bin/listread
rm -f /usr/local/bin/monthlong
rm -f /usr/local/bin/nodelist.sh
rm -f /usr/local/bin/poll
rm -f /usr/local/bin/removelink
rm -f /usr/local/bin/removepoint
rm -f /usr/local/bin/removeread
rm -f /usr/local/bin/rs
rm -f /usr/local/bin/save_arealist.sh
rm -f /usr/local/bin/st_htick.pl
rm -f /usr/local/bin/toss
rm -f /usr/local/bin/fidohelp
rm -f /usr/local/bin/viewpoint

rm -f /usr/bin/ee

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

rm -f /usr/local/lib/libfidoconfig.*
rm -f /usr/local/lib/libsmapi.*

rm -f /usr/lib/libfidoconfig.*
rm -f /usr/lib/libsmapi.*


rm -rf /usr/local/doc/golded*
rm -rf /usr/local/doc/binkd*
rm -rf /usr/local/doc/ee

rm -f /usr/local/sbin/binkd
rm -f /usr/local/sbin/bsopack
rm -f /usr/local/sbin/fconf2aquaed
rm -f /usr/local/sbin/fconf2areasbbs
rm -f /usr/local/sbin/fconf2binkd
rm -f /usr/local/sbin/fconf2fidogate
rm -f /usr/local/sbin/fconf2golded
rm -f /usr/local/sbin/fconf2msged
rm -f /usr/local/sbin/fconf2na.pl
rm -f /usr/local/sbin/fconf2squish
rm -f /usr/local/sbin/fconf2tornado
rm -f /usr/local/sbin/fecfg2fconf
rm -f /usr/local/sbin/gedlnx
rm -f /usr/local/sbin/gnlnx
rm -f /usr/local/sbin/hpt*
rm -f /usr/local/sbin/hpucode
rm -f /usr/local/sbin/htick
rm -f /usr/local/sbin/linked
rm -f /usr/local/sbin/linkedto
rm -f /usr/local/sbin/nlcrc
rm -f /usr/local/sbin/nldiff
rm -f /usr/local/sbin/nlupdate
rm -f /usr/local/sbin/pktinfo
rm -f /usr/local/sbin/rddtlnx
rm -f /usr/local/sbin/sqpack
rm -f /usr/local/sbin/tparser
rm -f /usr/local/sbin/txt2pkt
rm -f /usr/local/sbin/ulc
rm -f /usr/local/sbin/golded
rm -f /usr/local/sbin/openbsd-vt220.sh
rm -f /usr/local/sbin/screenrc_koi8r

rm -f /usr/local/man/man1/bsopack.1.gz
rm -f /usr/local/man/man1/hpt*.gz
rm -f /usr/local/man/man1/hpucode.1.gz
rm -f /usr/local/man/man1/htick.1
rm -f /usr/local/man/man1/pktinfo.1.gz
rm -f /usr/local/man/man1/sqpack.1.gz
rm -f /usr/local/man/man1/txt2pkt.1.gz
rm -f /usr/local/share/man/man8/binkd.8*
rm -f /usr/local/man/man8/binkd.8*

rm -f /usr/local/man/man1/htick*
rm -f /usr/local/share/man/bsopack.1.gz
rm -f /usr/local/share/man/hpt*.gz
rm -f /usr/local/share/man/hpucode.1.gz
rm -f /usr/local/share/man/htick.1
rm -f /usr/local/share/man/pktinfo.1.gz
rm -f /usr/local/share/man/sqpack.1.gz
rm -f /usr/local/share/man/txt2pkt.1.gz


echo "fidoip is removed from your computer"

elif [ "$reply" = "n" ];
        then 
echo "Installation of fidoip leaved as is."

fi

