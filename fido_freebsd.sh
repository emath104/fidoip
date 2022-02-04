#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Usage:  fido_freebsd.sh login
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"
T2="FreeBSD"

if [ ! -z "$2" ]; then
echo "Use 1 argument only. Usage: fido_freebsd.sh login" ; exit
fi

if [ ! -z "$1" ]
then
VAR_01=$1
else
  echo " To setup fidoip you need type you login name as argument. Usage: fido_freebsd.sh login" ; exit
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

if [ "$T2" = "$OSNAME" ]; then
echo  ''
else
echo 'Please run this script on a FreeBSD' ; exit
fi

f1()

{

if [ -e /usr/local/etc/binkd.cfg ]; then
echo '------------------------------------------------------------------------'
echo 'Found your configuration files, saving to file:'
echo ''
echo $CWD/$shortname
echo ''
echo '------------------------------------------------------------------------'
echo ''
tar -cf $CWD/$shortname /usr/local/etc/binkd.cfg /usr/local/etc/golded+/g* /usr/local/etc/fido/config /usr/local/bin/recv /usr/local/bin/send > /dev/null 2>&1

if [ -e /usr/local/sbin/recv ]; then
rm /usr/local/sbin/recv
fi

if [ -e /usr/local/sbin/send ]; then
rm /usr/local/sbin/send
fi

if [ -e /usr/local/sbin/ge ]; then
rm /usr/local/sbin/ge
fi

if [ -e /usr/local/sbin/g ]; then
rm /usr/local/sbin/g
fi

if [ -e /usr/local/sbin/gl ]; then
rm /usr/local/sbin/gl
fi

sleep 5 
fi

echo '-------------------------------------------------------------------------'
echo 'Make sure that necessary ports are installed on this machine:            |'
echo '-------------------------------------------------------------------------'
sleep 3
echo ""
if [ -e /usr/local/bin/unzip  ]; then
echo  'Found unzip package.'
else
echo 'Unzip package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/archivers/unzip/Makefile ]; then
echo '-------------------------------------------------------------------------'
echo 'using port /usr/ports/archivers/unzip/, begin compilation'
sleep 5
cd /usr/ports/archivers/unzip ; make install clean
if [ -e /usr/local/bin/unzip  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found unzip package now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Unzip package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi

echo ""
if [ -e /usr/local/bin/zip  ]; then
echo  'Found zip package.'
else
echo 'Zip package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/archivers/zip/Makefile ]; then
echo '-----------------------------------------------------------------------'
echo 'using port /usr/ports/archivers/zip/, begin compilation'
sleep 5
cd /usr/ports/archivers/zip ; make install clean
if [ -e /usr/local/bin/zip  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found zip package now.'
sleep 3
else
fi
else
echo '-----------------------------------------------------------------------'
echo 'Zip package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/screen  ]; then
echo  'Found screen package.'
else
echo 'Screen package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/sysutils/screen/Makefile ]; then
echo '-----------------------------------------------------------------------'
echo 'using port /usr/ports/sysutils/screen/, begin compilation'
sleep 5
cd /usr/ports/sysutils/screen ; make install clean
if [ -e /usr/local/bin/screen  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found screen package now.'
sleep 3
else
fi
else
echo '-----------------------------------------------------------------------'
echo 'Sreen package is still not installed!                       '  
echo 'Install this package manually, you may do it later'
fi
fi



echo ""
if [ -e /usr/local/bin/bash  ]; then
echo  'Found bash package.'
else
echo 'Bash package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/shells/bash/Makefile ]; then
echo '-------------------------------------------------------------------------'
echo 'using port /usr/ports/shells/bash/, begin compilation'
sleep 5
cd /usr/ports/shells/bash/ ; make install clean
if [ -e /usr/local/bin/bash  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found bash package now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Bash package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi

echo ""
if [ -e /usr/local/bin/wget  ]; then
echo  'Found wget package.'
else
echo 'wget package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/ftp/wget/Makefile ]; then
echo '-------------------------------------------------------------------------'
echo 'using port /usr/ports/ftp/wget/, begin compilation'
sleep 5
cd /usr/ports/ftp/wget/ ; make install clean
if [ -e /usr/local/bin/wget  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found wget package now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'wget package is still not installed!                       '
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi

rm -rf /usr/ports/net/*-fidoip
rm -rf /usr/ports/news/*-fidoip

tar -xzpf $CWD/bsd_ports.tar.gz -C / 

mkdir -p /usr/ports/packages

cp $CWD/binkd/binkd100.zip /usr/ports/distfiles/

echo ""
if [ -e /usr/local/sbin/binkd  ]; then
echo  'Found BinkD package.'
else
echo 'BinkD package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/net/binkd-fidoip/Makefile ]; then
echo '------------------------------------------------------------------------'
echo 'using port /usr/ports/net/binkd-fidoip/, begin compilation'
sleep 5
cd /usr/ports/net/binkd-fidoip ; make extract
mv /usr/ports/net/binkd-fidoip/work/binkd-1.0.0 /usr/ports/net/binkd-fidoip/work/binkd-fidoip-1.0.0
make package ; make clean
if [ -e /usr/local/sbin/binkd  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found BinkD package now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'BinkD package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi

cp $CWD/golded/gps90710.tb2 /usr/ports/distfiles/

echo ""
if [ -e /usr/local/bin/golded  ]; then
echo  'Found GoldEd+ package.'
else
echo 'GoldEd+ package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/golded+-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/golded+-fidoip/, begin compilation'
sleep 5
cd /usr/ports/news/golded+-fidoip ; make extract 
mv /usr/ports/news/golded+-fidoip/work/golded+ /usr/ports/news/golded+-fidoip/work/golded+-fidoip
mkdir -p /usr/local/etc/golded+
cp -R /usr/ports/news/golded+-fidoip/work/golded+-fidoip/cfgs /usr/local/etc/golded+/
cp -R /usr/ports/news/golded+-fidoip/work/golded+-fidoip/chsgen/map /usr/local/etc/golded+/

make patch ; make package ; make clean

if [ -e /usr/local/bin/golded  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Found GoldEd+ package now.'
sleep 3
else
fi
else
echo '---------------------------------------------------------------------------'
echo 'GoldEd+ package is still not installed!                     '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi


mkdir -p /usr/ports/distfiles/husky
cp $CWD/husky/huskybase-1.4-tar.gz /usr/ports/distfiles/husky/
cp $CWD/husky/smapi-2.4-rc5.tar.gz /usr/ports/distfiles/husky/smapi-fidoip-2.4-rc5.tar.gz
cp $CWD/husky/fidoconf-1.4-rc5.tar.gz /usr/ports/distfiles/husky/fidoconf-fidoip-1.4-rc5.tar.gz
cp $CWD/husky/hpt-1.4-rc5.tar.gz /usr/ports/distfiles/husky/hpt-fidoip-1.4-rc5.tar.gz
cp $CWD/husky/hptkill-1.12-rc5.tar.gz /usr/ports/distfiles/husky/hptkill-fidoip-1.4-src.tar.gz
cp $CWD/husky/htick-1.4-rc5.tar.gz /usr/ports/distfiles/husky/htick-fidoip-1.4-src.tar.gz
cp $CWD/husky/nltools-1.4-rc5.tar.gz /usr/ports/distfiles/husky/nltools-fidoip-1.4-src.tar.gz
cp $CWD/husky/hpucode-1.4-rc5-tar.gz /usr/ports/distfiles/husky/hpucode-fidoip-1.4-src.tar.gz
cp $CWD/husky/sqpack-1.4-rc5.tar.gz /usr/ports/distfiles/husky/sqpack-fidoip-1.4-src.tar.gz
cp $CWD/husky/hptsqfix-1.4-rc5-1.tar.gz /usr/ports/distfiles/husky/hptsqfix-fidoip-1.4-src.tar.gz
cp $CWD/husky/bsopack-1.4.0-rc5.tar.gz /usr/ports/distfiles/husky/bsopack-fidoip-1.4.0-src.tar.gz

UNAME=`uname -m`

if [ "$UNAME" = "amd64" ];
then
export MACHINE="i386"
export UNAME_p="i386"
export UNAME_m="i386"
export CFLAGS="-fPIC"
fi

echo ""
if [ -e /usr/local/etc/fido/huskymak.cfg  ]; then
echo  'Found Husky HPT package.'
else
echo 'Husky HPT Base package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-base-devel-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-base-devel-fidoip/, begin compilation'
sleep 5
cd /usr/ports/news/husky-base-devel-fidoip ; make package ; make clean
if [ -e /usr/local/etc/fido/huskymak.cfg  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Husky HPT Base package installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Husky HPT Base package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi



echo ""
if [ -e /usr/local/lib/libsmapi.so  ]; then
echo  'Found Husky HPT Smapi library.'
else
echo 'Husky HPT Smapi library is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-smapi-devel-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-smapi-devel-fidoip/, begin compilation'
sleep 5
cd /usr/ports/news/husky-smapi-devel-fidoip ; make extract
mv /usr/ports/news/husky-smapi-devel-fidoip/work/smapi /usr/ports/news/husky-smapi-devel-fidoip/work/smapi-fidoip
make patch ; make package ; make clean

if [ -e /usr/local/lib/libsmapi.so.2  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Husky HPT Smapi library installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Husky HPT Smapi library is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi


echo ""
if [ -e /usr/local/info/fidoconfig.info  ]; then
	echo  'Found Husky HPT Fidoconf package.'
else
echo 'Husky HPT Fidoconf package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-fidoconf-devel-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-fidoconf-devel-fidoip/, begin compilation'
sleep 5
cd /usr/ports/news/husky-fidoconf-devel-fidoip ; make extract
mv /usr/ports/news/husky-fidoconf-devel-fidoip/work/fidoconf /usr/ports/news/husky-fidoconf-devel-fidoip/work/fidoconf-fidoip
make patch ; make package ; make clean

if [ -e /usr/local/info/fidoconfig.info  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Husky HPT Fidoconf package installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Husky HPT Fidoconf package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/hpt  ]; then
echo  'Found Husky HPT package.'
else
echo 'Husky HPT package is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-hpt-devel-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-hpt-devel-fidoip/, begin compilation'
sleep 5
cd /usr/ports/news/husky-hpt-devel-fidoip ; make extract
mv /usr/ports/news/husky-hpt-devel-fidoip/work/hpt /usr/ports/news/husky-hpt-devel-fidoip/work/hpt-fidoip
make patch ; make package ; make clean

if [ -e /usr/local/bin/hpt  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Husky HPT package installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Husky HPT package is still not installed!                       '  
echo 'Error. Install this package manually, then rerun this script'
exit
fi
fi


echo '-------------------------------------------------------------------------'
echo 'Additional Husky HPT ports installation for FIDO node configuration:     |'
echo '-------------------------------------------------------------------------'
sleep 3
echo ""


echo ""
if [ -e /usr/local/bin/hptkill  ]; then
echo  'Found Area killing utility Husky-hptkill.'
else
echo 'Area killing utility Husky-hptkill is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-hptkill-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-hptkill-fidoip/, begin compilation'
sleep 5



cd /usr/ports/news/husky-hptkill-fidoip/ ; make extract 

mv /usr/ports/news/husky-hptkill-fidoip/work/hptkill /usr/ports/news/husky-hptkill-fidoip/work/hptkill-fidoip

make package ; make clean

if [ -e /usr/local/bin/hptkill  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Area killing utility Husky-hptkill installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Area killing utility Husky-hptkill is still not installed!                       '  
echo 'Warning. Install this package later manually.'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/hptsqfix  ]; then
echo  'Found Fix message base utility husky-hptsqfix.'
else
echo 'Fix message base utility husky-hptsqfix is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-hptsqfix-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-hptsqfix-fidoip/, begin compilation'
sleep 5


cd /usr/ports/news/husky-hptsqfix-fidoip/ ; make extract
mv /usr/ports/news/husky-hptsqfix-fidoip/work/hptsqfix /usr/ports/news/husky-hptsqfix-fidoip/work/hptsqfix-fidoip
make package ; make clean

if [ -e /usr/local/bin/hptsqfix  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Fixing message base utility husky-hptsqfix installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'Fix message base utility husky-hptsqfix is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/hpucode  ]; then
echo  'Found UUE message base scanning utility husky-hpucode.'
else
echo 'UUE message base scanning utility husky-hpucode is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-hpucode-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-hpucode-fidoip/, begin compilation'
sleep 5

cd /usr/ports/news/husky-hpucode-fidoip/ ; make extract
mv /usr/ports/news/husky-hpucode-fidoip/work/hpucode /usr/ports/news/husky-hpucode-fidoip/work/hpucode-fidoip
make patch ; make package ; make clean
if [ -e /usr/local/bin/hpucode  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! UUE message base scanning utility husky-hpucode installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo 'UUE message base scanning utility husky-hpucode is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi



echo ""
if [ -e /usr/local/bin/htick  ]; then
echo  'Found FTN File ticker utility husky-htick.'
else
echo ' FTN File ticker utility is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-htick-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-htick-fidoip/, begin compilation'
sleep 5

cd /usr/ports/news/husky-htick-fidoip/ ; make extract
mv /usr/ports/news/husky-htick-fidoip/work/htick /usr/ports/news/husky-htick-fidoip/work/htick-fidoip
cp /usr/ports/news/husky-htick-fidoip/Makefile.doc /usr/ports/news/husky-htick-fidoip/work/htick-fidoip/doc/Makefile
make patch ; make package ; make clean
if [ -e /usr/local/bin/htick  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow!  FTN File ticker utility husky-htick installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo ' FTN File ticker utility husky-htick is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi

echo ""
if [ -e /usr/local/bin/nldiff  ]; then
echo  'Found Nodelist tools husky-nltools.'
else
echo 'Nodelist tools husky-nltools is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-nltools-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-nltools-fidoip/, begin compilation'
sleep 5


cd /usr/ports/news/husky-nltools-fidoip/ ; make extract 
mv /usr/ports/news/husky-nltools-fidoip/work/nltools /usr/ports/news/husky-nltools-fidoip/work/nltools-fidoip
make package ; make clean
if [ -e /usr/local/bin/nldiff  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow!  Nodelist tools husky-nltools installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo ' Nodelist tools husky-nltools is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/sqpack  ]; then
echo  'Found Message base packer husky-sqpack.'
else
echo 'Message base packer husky-sqpack is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-sqpack-fidoip/Makefile ]; then 
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-sqpack-fidoip/, begin compilation'
sleep 5

cd /usr/ports/news/husky-sqpack-fidoip/ ; make extract 
mv /usr/ports/news/husky-sqpack-fidoip/work/sqpack /usr/ports/news/husky-sqpack-fidoip/work/sqpack-fidoip
make package ; make clean

if [ -e /usr/local/bin/sqpack  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Message base packer husky-sqpack installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo ' Message base packer husky-sqpack is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi


echo ""
if [ -e /usr/local/bin/bsopack  ]; then
echo  'Found outbound netmail packer husky-bsopack.'
else
echo 'Message outbound netmail packer  is not installed!'
echo 'Trying to install it from ports'
if [ -e /usr/ports/news/husky-bsopack-fidoip/Makefile ]; then
echo '--------------------------------------------------------------------------'
echo 'using port /usr/ports/news/husky-bsopack-fidoip/, begin compilation'
sleep 5

cd /usr/ports/news/husky-bsopack-fidoip/ ; make extract
mv /usr/ports/news/husky-bsopack-fidoip/work/bsopack /usr/ports/news/husky-bsopack-fidoip/work/bsopack-fidoip
make package ; make clean

if [ -e /usr/local/bin/bsopack  ]; then
echo '-------------------------------------------------------------------------'
echo  'Wow! Message outbound netmail packer husky-bsopack installed now.'
sleep 3
else
fi
else
echo '-------------------------------------------------------------------------'
echo ' Message outbound netmail packer husky-bsopack is still not installed!                       '  
echo 'Warning. You could install this package later manually.'
exit
fi
fi



echo '-----------------------------------------------------------------------------'
echo "  Creating fidoip's directories for user "$VAR_01" in /home/fido/  "
echo '-----------------------------------------------------------------------------'
echo ''

if [ -e $CWD/binkd/binkd.log ]; then
  mkdir -p /home/fido
  mkdir -p /home/fido/outbound
  mkdir -p /home/fido/protinb
  mkdir -p /home/fido/inbound
  mkdir -p /home/fido/tempinb
  mkdir -p /home/fido/tempoutb
  mkdir -p /home/fido/filebox
  mkdir -p /home/fido/badarea 
  mkdir -p /home/fido/carbonarea
  mkdir -p /home/fido/msgbasedir
  mkdir -p /home/fido/netmailarea
  mkdir -p /home/fido/localinb
  mkdir -p /home/fido/uudecode
  mkdir -p /home/fido/outfile
  mkdir -p /home/fido/nodelist
  mkdir -p /home/fido/2uplink
  mkdir -p /home/fido/public
  mkdir -p /home/fido/fghigetdir
  mkdir -p /home/fido/flags
  mkdir -p /home/fido/magic
  mkdir -p /home/fido/announce
  if [ -e /home/fido/binkd.log ]; then
  echo ' '
  else
  cat $CWD/binkd/binkd.log > /home/fido/binkd.log
  fi
fi

echo '---------------------------------------------------------------------------'
echo ''
echo ''
echo '------------------------------------------------------------------------'
echo "  Packages are OK. Now I am going to install fidoip for user "$VAR_01"  "
echo '------------------------------------------------------------------------'
echo ''
sleep 3

cd $CWD/binkd
sh binkd.freebsdBuild
cd ../husky
sh husky.freebsdBuild
cd ../golded
sh golded.freebsdBuild+


# Add logs for hpt:

if [ -e $CWD/husky/echotoss.log ]; then
  cat $CWD/husky/echotoss.log > /home/fido/echotoss.log
fi

if [ -e $CWD/husky/import.log ]; then
   cat $CWD/husky/import.log > /home/fido/import.log
fi

if [ -e $CWD/husky/htick.log ]; then
   cat $CWD/husky/htick.log > /home/fido/htick.log
fi

if [ -e $CWD/husky/sqpack.log ]; then
   cat $CWD/husky/sqpack.log > /home/fido/sqpack.log
fi

if [ -e /home/fido/hpt.log ]; then
 echo ' '
 else 
   cat $CWD/husky/hpt.log > /home/fido/hpt.log
fi


# Add log for golded+:
if [ -e /home/fido/golded.log ]; then
 echo ' '
else
 if [ -e $CWD/golded/golded.log ]; then
  cat $CWD/golded/golded.log > /home/fido/golded.log
fi
fi

echo '-------------------------------------------------------'
echo 'Checking installation of additional Husky programms...'
echo '-------------------------------------------------------'
sleep 2
echo ""

sleep 1

echo ""
if [ -e /usr/local/bin/hptkill  ]; then
echo  'Found Area killing utility Husky-hptkill.'
else
echo 'Area killing utility Husky-hptkill is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/hptsqfix  ]; then
echo  'Found Fix message base utility husky-hptsqfix.'
else
echo 'Fix message base utility husky-hptsqfix is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/hpucode  ]; then
echo  'Found UUE message base scanning utility husky-hpucode.'
else
echo 'UUE message base scanning utility husky-hpucode is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/htick  ]; then
echo  'Found FTN File ticker utility husky-htick.'
else
echo ' FTN File ticker utility is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/nldiff  ]; then
echo  'Found Nodelist tools husky-nltools.'
else
echo 'Nodelist tools husky-nltools is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/sqpack  ]; then
echo  'Found Message base packer husky-sqpack.'
else
echo 'Message base packer husky-sqpack is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/bin/bsopack  ]; then
echo  'Found outbound netmail packer husky-bsopack.'
else
echo 'Outbound netmail packer husky-bsopack is not installed!'
fi

sleep 1

echo ''
echo '--------------------------------------------------------------------'
echo '| Checking installation of fidoip(BinkD, Husky HPT and GoldEd+).    |'
echo '--------------------------------------------------------------------'


if [ -e /usr/local/sbin/binkd  ]; then
echo ""
echo  '     BinkD installed succesfully.'
else
echo 'BinkD compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

if [ -e /usr/local/bin/hpt  ]; then
echo ""
echo  '     Husky HPT installed succesfully.'
else
echo 'Husky HPT compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

if [ -e /usr/local/bin/golded  ]; then
echo ""
echo  '     GoldEd+ installed succesfully.'
else
echo 'GoldEd+ compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

sleep 3

if [ -e /usr/local/sbin/binkd  ]; then

echo ""
if [ -e /usr/local/bin/hpt  ]; then

echo ""
if [ -e /usr/local/bin/golded  ]; then

echo '------------------------------------------------------------------------'
echo "   Done! Installation fidoip for user $VAR_01 are finished successully."
echo '   Edit config files as it decribed in fido.rus.koi file.      '
echo '   Visit http://sourceforge.net/apps/mediawiki/fidoip for documentation'
echo '   Visit http://sourceforge.net/projects/fidoip/ for info and updates.  '
echo '------------------------------------------------------------------------'

else
echo ' Installation of fidoip failed!'
echo ' Read documentation fido.rus.koi file,'
echo ' fix the problem and try to run this script again.  '
fi

else
echo ' Installation of fidoip failed!'
echo ' Read documentation fido.rus.koi file,'
echo ' fix the problem and try to run this script again.  '
fi

else
echo ' Installation of fidoip failed!'
echo ' Read documentation fido.rus.koi file,'
echo ' fix the problem and try to run this script again. '
fi

} 
f1 "${VAR_01}"
#End of fido_freebsd.sh
