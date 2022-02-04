#!/bin/sh
#! This script will setup fidoip binaries without compiliation for you computer
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`
UNAME=`uname -m`

T1="root"
T2="Linux"

if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

if [ "$T2" = "$OSNAME" ]; then
echo  ''
else
echo 'This script is intended to run only on Linux' ; exit
fi

##  make sure libarchve archiver available
bsdloc=`which ar`

if [ -x "$bsdloc" ]
then
    echo "ar decompressor utility found: $bsdloc"
else
    echo "WARNING: ar not found."
    echo "So it will not be possible to pack fidoip binary on this machine."
    echo " Please install dpkg package from you repository"
    echo " as described in fidoip.rus.* files."
    exit
fi
echo ""
echo "-----------------------------------"

echo
echo "Are you sure to install fidoip from binary file?"
echo "[y/n]"
read reply
echo ""  
if [ "$reply" = "y" ];
        then 

if [ "$UNAME" = "x86_64" ]; then
echo  'Extracting binary for x86_64 platform'
set -e
cp $CWD/lnx-packages/64bit/deb/fidoip_1.0.5-2_amd64.deb /tmp
cd /tmp
ar x fidoip_1.0.5-2_amd64.deb
rm -rf /tmp/fidoip_bin
mkdir -p /tmp/fidoip_bin
tar -xzpf /tmp/data.tar.gz -C /tmp/fidoip_bin
cd /tmp/fidoip_bin
cp -Rp * / > /dev/null 2>&1
else
echo  "Extracting binary for "$UNAME" platform"
set -e
cp $CWD/lnx-packages/32bit/deb/fidoip_1.0.5-2_i386.deb /tmp
cd /tmp
ar x fidoip_1.0.5-2_i386.deb
rm -rf /tmp/fidoip_bin
mkdir -p /tmp/fidoip_bin
tar -xzpf /tmp/data.tar.gz -C /tmp/fidoip_bin
cd /tmp/fidoip_bin
cp -Rp * / > /dev/null 2>&1
fi



echo "fidoip binaries installed to /usr/local"

elif [ "$reply" = "n" ];
        then 
echo "fidoip binaries not installed"

fi

