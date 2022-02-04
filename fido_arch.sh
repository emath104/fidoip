#!/bin/sh
# fidoip pakaging and install srtipt for Arch Linux
# Usage:  fido_arch.sh login
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
date=`date +%Y%m%d%m%s`
shortdate=`echo ${date} | sed s/^...//`
shortname=fidoip_configs_${shortdate}.tar

T1="root"
T2="Linux"


if [ ! -z "$2" ]; then
echo "Use 1 argument only. Usage: fido_arch.sh login" ; exit
fi

if [ ! -z "$1" ]
then
VAR_01=$1
else
  echo " To setup fidoip you need type you login name as argument. Usage: fido_arch.sh login" ; exit
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
echo 'Please run this script on a Linux' ; exit
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
sleep 5 
fi

echo '-------------------------------------------------------------------'
echo "Checking whether some necessary packages installed on this mashine:"
echo '-------------------------------------------------------------------'
sleep 3
echo ""

##  make sure unzip extractor available

unziploc=`which unzip`

if [ -x "$unziploc" ]
then
    echo "unzip extractor found: $unziploc"
else
    echo "WARNING: unzip not found."
    echo "Trying to install it from repository"
    pacman -S unzip
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
    echo "Trying to install it from repository"
    pacman -S zip
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
    echo "Trying to install it from repository"
    pacman -S bzip2
fi
echo ""
echo "-----------------------------------"


##  make sure make available
makeloc=`which make`

if [ -x "$makeloc" ]
then
    echo "make utility found: $makeloc"
else
    echo "WARNING: make not found."
    echo "Trying to install it from repository"
    pacman -S make 
fi
echo ""
echo "-----------------------------------"
## make sure C compiler/linker available

gccloc=`which gcc`

if [ -x "$gccloc" ]
then
    echo "C compiler found: $gccloc"
else
    echo "WARNING: gcc not found."
    echo "Trying to install it from repository"
    pacman -S gcc
fi

echo ""
echo "-----------------------------------"


## make sure C++ compiler/linker available

gploc=`which g++`

if [ -x "$gploc" ]
then
    echo "C++ compiler found: $gploc"
else
    echo "WARNING: C++ support for gcc not found."
    echo "So it will not be possible to compily fidoip on this machine."
    echo " You should take steps to get c++ installed,"
    echo " as described in fidoip.rus.* files."
    exit
fi

echo ""
echo "-----------------------------------"

## make sure ncurses-devel library available

if [ -e /usr/include/ncurses.h ]
then
    echo "Ncurses-devel library found: /usr/include/ncurses.h"
else
    echo "WARNING: ncurses-devel library not found."
    echo "So it may not be possible to compily GoldEd+ on this machine."
    echo " You should take steps to make ncurses-devel library be installed,"
    echo " as described in fidoip.rus.* files."
    echo " You could press Ctrl-C now to stop this script," 
    echo " if not - GoldEd+ could not be compiled."
    sleep 5 
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
    echo "Trying to install it from repository"
    pacman -S screen
    sleep 5
fi

echo ""
echo "-----------------------------------"

## make sure gettext available

if [ -e /usr/share/gettext ]
then
    echo "Gettext found: /usr/share/gettext"
else
    echo "Trying to install it from repository"
    pacman -S gettext
    sleep 5
fi
echo ""
echo "-----------------------------------"


echo ""

echo ''
echo '----------------------------------------------------------------------'
echo '| Starting creating packages of fidoip (BinkD, Husky HPT and GoldEd) |'
echo '----------------------------------------------------------------------'
echo ''
sleep 10


if [ -e /var/abs/local/binkd ]; then
rm -rf /var/abs/local/{binkd,husky-bsopack,husky-hptkill,husky-htick,husky-sqpack,ee,husky-fidoconf,husky-hptsqfix,husky-nltools,libiconv,golded,husky-hpt,husky-hpucode,husky-smapi}
fi

cp arch.abs.tar.bz2 / ; cd / ; tar -xjpf arch.abs.tar.bz2 ; rm /arch.abs.tar.bz2

 
cd $CWD/binkd
sh binkd.ArchBuild
cd $CWD/husky
sh husky.ArchBuild
cd $CWD/golded
sh golded.ArchBuild+

# Add screen's settings for user:

if [ -e $CWD/binkd/.screenrc ]; then
  cat $CWD/binkd/.screenrc > /home/$VAR_01/.screenrc
fi


sleep 3

if [ -e /usr/local/sbin/binkd-1.0.0  ]; then

echo
if [ -e /usr/local/sbin/hpt  ]; then

echo
if [ -e /usr/local/sbin/gedlnx  ]; then

echo "------------------------------------------------------------------------"
echo "   Done! Installation fidoip for user $VAR_01 are finished successully."
echo "   Setup configuration as it decribed in fido.rus.* files.      "
echo "   Visit http://sourceforge.net/projects/fidoip/ for info and updates.  "
echo "   Visit http://sourceforge.net/apps/mediawiki/fidoip for documentation."
echo "------------------------------------------------------------------------"

else
echo " Installation of fidoip failed!"
echo " Read documentation fido.rus.koi file,"
echo " fix the problem and try to run this script again.  "
fi

else
echo " Installation of fidoip failed!"
echo " Read documentation fido.rus.koi file,"
echo " fix the problem and try to run this script again.  "
fi

else
echo " Installation of fidoip failed!"
echo " Read documentation fido.rus.koi file,"
echo " fix the problem and try to run this script again. "
fi


}
f1 "${VAR_01}"
#End of fido_arch.sh
