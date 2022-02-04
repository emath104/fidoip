#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Usage:  fido_dragonflybsd.sh login
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"
T2="DragonFly"

if [ ! -z "$2" ]; then
echo "Use 1 argument only. Usage: fido_dragonflybsd.sh login" ; exit
fi

if [ ! -z "$1" ]
then
VAR_01=$1
else
  echo " To setup fidoip you need type you login name as argument. Usage: fido_dragonflybsd.sh login" ; exit
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
echo 'Please run this script on a DradonFly' ; exit
fi

f1()

{

if [ -e /usr/local/etc/binkd.cfg ]; then
echo '-----------------------------------------------------------'
echo 'Found your configuration files, saving to file:'
echo ''
echo $CWD/$shortname
echo ''
echo '-----------------------------------------------------------'
echo ''
tar -cf $CWD/$shortname /usr/local/etc /usr/local/bin/{recv,send} > /dev/null 2>&1

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

if [ -e /home/fido/protinbound ]; then
        rm -r /home/fido/protinbound
fi
if [ -e /home/fido/tempinbound ]; then
        rm -r /home/fido/tempinbound
fi
if [ -e /home/fido/tempoutbound ]; then
        rm -r /home/fido/tempoutbound
fi
if [ -e /home/fido/localinbound ]; then
        rm -r /home/fido/localinbound
fi



sleep 5 
fi

echo '-------------------------------------------------------------------'
echo "Checking whether some necessary packages installed on this mashine:"
echo '-------------------------------------------------------------------'
sleep 3
echo ""

## checking pkgsrc install directory

if [ -e /usr/pkgsrc/archivers/unzip ]; then
echo "Found pkgsrc directory."
else 
echo "Warning: pkgsrc directory /usr/pkgsrc not found."
echo "You should install and update pkgsrc or it will not be 
echo "possible to install fidoip on this mashine."
echo "Please install pkgsrc and run this "script again."
exit
fi

##  make sure unzip extractor available

unziploc=`which unzip`

if [ -x "$unziploc" ]
then
    echo "unzip extractor found: $unziploc"
else
    echo "WARNING: unzip not found."
    echo "Tryng to install it from pkgsrc"
    cd /usr/pkgsrc/archivers/unzip ; bmake install clean
fi

unziploc=`which unzip`
if [ -x "$unziploc" ]
then
    echo "unzip extractor found: $unziploc"
    else
    echo "WARNING: unzip not found. pkgsrc installation failed" 
    echo "So it will not be possible to extract fidoip on this machine."
    echo " You should take steps to get unzip installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"

##  make sure zip archiver available
ziploc=`which zip`

if [ -x "$ziploc" ]
then
    echo "zip packer found: $ziploc"
else
    echo "WARNING: zip not found."
    echo "Trying to install it from pkgsrc"
    cd /usr/pkgsrc/archivers/zip ; bmake install clean
fi

ziploc=`which zip`

if [ -x "$ziploc" ]
then
    echo "zip packer found: $ziploc"
else
    echo "WARNING: zip not found. pkgsrc install failed."
    echo "So it will not be possible to pack fido packets on this machine."
    echo " You should take steps to get zip installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"

##  make sure bzip2 archiver available
bzip2loc=`which bzip2`

if [ -x "$bzip2loc" ]
then
    echo "bzip2 packer found: $bzip2loc"
else
    echo "WARNING: bzip2 not found."
    echo "Trying install it from pkgsrc."
    cd /usr/pkgsrc/archivers/bzip2 ; bmake install clean    
fi

bzip2loc=`which bzip2`

if [ -x "$bzip2loc" ]
then
    echo "bzip2 packer found: $bzip2loc"
else
    echo "WARNING: bzip2 not found. pkgsrc install failed."
    echo "So it will not be possible extract fidoip sources on this machine."
    echo " You should take steps to get bzip2 installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"

## make sure gmake available

gmakeloc=`which gmake`

if [ -x "$gmakeloc" ]
then
    echo "gmake found: $gmakeloc"
else
    echo "WARNING: gmake not found."
    echo "Trying to install it from pkgsrc."
    cd /usr/pkgsrc/devel/gmake ; bmake install clean
fi

gmakeloc=`which gmake`

if [ -x "$gmakeloc" ]
then
    echo "gmake found: $gmakeloc"
else
    echo "WARNING: gmake not found. pkgsrc install failed."
    echo "So it will not be possible to compily fidoip on this machine."
    echo " You should take steps to get gmake installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"
bashloc=`which bash`

if [ -x "$bashloc" ]
then
    echo "bash found: $bashloc"
else
    echo "WARNING: bash not found."
    echo "Trying to install it from pkgsrc."
    cd /usr/pkgsrc/shells/bash ; bmake install clean
fi
bashloc=`which bash`

if [ -x "$bashloc" ]
then
    echo "bash found: $bashloc"
else
    echo "WARNING: bash not found. pkgsrc install failed."
    echo "So it will not be possible to configure fidoip on this machine."
    echo " You should take steps to get bash installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"

## make sure screen available

scrloc=`which screen`

if [ -x "$scrloc" ]
then
    echo "Screen package found: $scrloc"
else
    echo "Information: Screen package not found."
    echo "Trying to install it from pkgsrc."
    cd /usr/pkgsrc/misc/screen ; bmake install clean 
fi

if [ -x "$scrloc" ]
then
    echo "Screen package found: $scrloc"
else
    echo "Information: Screen package not found."
    echo "You may need install it later,"
    echo "as described in fidoip.rus.* files."
    sleep 5
fi
echo ""
echo "-----------------------------------"

luitloc=`which luit`
if [ -x "$luitloc" ]
then
    echo "luit package found: $luitloc"
else
    echo "Information: luit package not found."
    echo "If you have UTF-8 codepade and will use script gl, you may need" 
    echo "install it later, from pkgsrc:"
    echo "cd /usr/pkgsrc/x11/luit ; bmake install clean"
    sleep 5
fi


echo ""
echo "-----------------------------------"


## make sure libiconv available

if [ -e /usr/pkg/share/doc/libiconv ]
then
    echo "libiconv found: /usr/pkg/share/doc/libiconv"
else
    echo "Information: libiconv package not found."
    echo "Trying to install in from pkgsrc"
    cd /usr/pkgsrc/converters/libiconv ; bmake install clean
fi
if [ -e /usr/pkg/share/doc/libiconv ]
then
    echo "libiconv found: /usr/pkg/share/doc/libiconv"
else
    echo "Information: libiconv package not found. pkgsrc install failed."
    echo "You need install it as described in fidoip.rus.* files." 
    exit
fi

echo ""
echo "-----------------------------------"

## make sure gettext available

if [ -e /usr/pkg/share/gettext ]
then
    echo "Gettext found: /usr/pkg/share/gettext"
else
    echo "Information: Gettext package not found."
    echo "Trying to install in from pkgsrc"
    cd /usr/pkgsrc/devel/gettext ; bmake install clean 
fi

if [ -e /usr/pkg/share/gettext ]
then
    echo "Gettext found: /usr/pkg/share/gettext"
else
    echo "Information: Gettext package not found. pkgsrc install failed."
    echo "You may need install it later,"
    echo "as described in fidoip.rus.* files."
    sleep 5
fi

echo ""
echo "-----------------------------------"

wgetloc=`which wget`

if [ -x "$wgetloc" ]
then
    echo "Wget package found: $wgetloc"
else
    echo "Information: Wget package not found."
    echo "Trying to install from pkgsrc."
    cd /usr/pkgsrc/net/wget ; bmake install clean
fi
wgetloc=`which wget`

if [ -x "$wgetloc" ]
then
    echo "Wget package found: $wgetloc"
else
    echo "Information: Wget package not found."
    echo "You may need install it later,"
    echo "as described in fidoip.rus.* files."
    sleep 5
fi

echo ""
echo "-----------------------------------"

echo ""

echo ''
echo '--------------------------------------------------------------'
echo '| Starting compiling of fidoip (BinkD, Husky HPT and GoldEd+).|'
echo '--------------------------------------------------------------'
echo ''
sleep 10

cd $CWD
cd binkd
sh binkd.Build.other.bsd
cd ../golded
sh golded.Build+.other.bsd
UNAME=`uname -m`

if [ "$UNAME" = "amd64" ];
then
export MACHINE="i386"
export UNAME_p="i386"
export UNAME_m="i386"
export CFLAGS="-fPIC"
fi

cd ../husky
sh husky.Build.other.bsd

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
  mkdir -p /home/fido/flags
  mkdir -p /home/fido/magic
  mkdir -p /home/fido/announce
 if [ -e /home/fido/binkd.log ]; then
 echo ' '
 else
 cat $CWD/binkd/binkd.log > /home/fido/binkd.log
 fi
fi


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

#Linking libraries

#ln -sf /usr/local/lib/libfidoconfig.so.1.4 /lib/libfidoconfig.so.1.4
#ln -sf /usr/local/lib/libsmapi.so.2.4 /lib/libsmapi.so.2.4
#ln -sf /usr/local/lib/libfidoconfig.so /lib/libfidoconfig.so.1.4


echo '------------------------------------------------------------------'
echo 'Checking installation of additional Husky programms...'
echo '------------------------------------------------------------------'
sleep 2
echo ""


echo ""
if [ -e /usr/local/sbin/hptkill  ]; then
echo  'Found Area killing utility Husky-hptkill.'
else
echo 'Area killing utility Husky-hptkill is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/hptsqfix  ]; then
echo  'Found Fix message base utility husky-hptsqfix.'
else
echo 'Fix message base utility husky-hptsqfix is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/hpucode  ]; then
echo  'Found UUE message base scanning utility husky-hpucode.'
else
echo 'UUE message base scanning utility husky-hpucode is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/htick  ]; then
echo  'Found FTN File ticker utility husky-htick.'
else
echo ' FTN File ticker utility is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/nldiff  ]; then
echo  'Found Nodelist tools husky-nltools.'
else
echo 'Nodelist tools husky-nltools is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/sqpack  ]; then
echo  'Found Message base packer husky-sqpack.'
else
echo 'Message base packer husky-sqpack is not installed!'
fi

sleep 1

echo ""
if [ -e /usr/local/sbin/bsopack  ]; then
echo  'Found outbound netmail packer husky-bsopack.'
else
echo 'Outbound netmail packer husky-bsopack is not installed!'
fi

sleep 1

echo ''
echo '-----------------------------------------------------------------------'
echo '| Checking installation of fidoip(BinkD, Husky HPT and GoldEd+).       |'
echo '-----------------------------------------------------------------------'
echo ''

echo ''

if [ -e /usr/local/sbin/binkd  ]; then
echo  '     BinkD installed succesfully.'
else
echo 'BinkD compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

if [ -e /usr/local/sbin/hpt  ]; then
echo  '     Husky HPT installed succesfully.'
else
echo 'Husky HPT compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

if [ -e /usr/local/sbin/gedlnx  ]; then
echo  '     GoldEd+ installed succesfully.'
else
echo 'GoldEd+ compilation failed! Read fido.rus.utf file, install necessary packages for compilation and then run this script again.'
fi

sleep 3
if [ -e /usr/local/sbin/binkd  ]; then
echo ""
if [ -e /usr/local/sbin/hpt  ]; then
echo ""
if [ -e /usr/local/sbin/gedlnx  ]; then
echo '------------------------------------------------------------------------'
echo "   Done! Installation fidoip for user $VAR_01 are finished successfully."
echo '   Edit config files as it decribed in fido.rus.koi file.      '
echo '   Visit http://sourceforge.net/projects/fidoip/ for info and updates.  '
echo '   http://sourceforge.net/apps/mediawiki/fidoip for wiki documentation. '
echo '------------------------------------------------------------------------'

else
echo 'Installation of fidoip failed!'
echo 'Read documentation fido.rus.koi file,'
echo 'fix the problem and try to run this script again.  '
fi

else
echo 'Installation of fidoip failed!'
echo 'Read documentation fido.rus.koi file,'
echo 'fix the problem and try to run this script again.  '
fi

else
echo 'Installation of fidoip failed!'
echo 'Read documentation fido.rus.koi file,'
echo 'fix the problem and try to run this script again. '
fi


} 
f1 "${VAR_01}"
#End of ido_linux_koi.sh
