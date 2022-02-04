#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Usage:  relinkapps.sh
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`

T1="root"
T2="Linux"
if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

if [ "$OSNAME" = "$T2" ]; then
echo ''
else
exit
fi

f1()

{
echo ''
echo '-----------------------------------------------------'
echo "Relinking libraries and binaries...                    "
echo '-----------------------------------------------------'
echo ''

echo "Relinking libraries in /usr/local/lib"

cd /usr/local/lib ; rm -rf libsmapi.so
cd /usr/local/lib ; ln -sf libsmapi.so.2.4.0 libsmapi.so
cd /usr/local/lib ; rm -rf libfidoconfig.so.1.4
cd /usr/local/lib ; ln -sf libfidoconfig.so.1.4.0 libfidoconfig.so.1.4
cd /usr/local/lib ; rm -rf libfidoconfig.so
cd /usr/local/lib ; ln -sf libfidoconfig.so.1.4.0 libfidoconfig.so
cd /usr/local/lib ; rm -rf libsmapi.so.2
cd /usr/local/lib ; ln -sf libsmapi.so.2.4.0 libsmapi.so.2
cd /usr/local/lib ; rm -rf libsmapi.so.2.4
cd /usr/local/lib ; ln -sf libsmapi.so.2.4.0 libsmapi.so.2.4

if [ -e /usr/lib64  ]; then
echo  "Found directory for 64-bit libraries... "

cd /usr/lib64 ; rm -rf libsapi.so
ln -sf /usr/local/lib/libsmapi.so.2.4.0 libsmapi.so

cd /usr/lib64 ; rm -rf libfidoconfig.so.1.4
ln -sf /usr/local/lib/libfidoconfig.so.1.4.0 libfidoconfig.so.1.4

cd /usr/lib64 ; rm -rf libfidoconfig.so
ln -sf /usr/local/lib/libfidoconfig.so.1.4.0 libfidoconfig.so

cd /usr/lib64 ; rm -rf libsmapi.so.2
ln -sf /usr/local/lib/libsmapi.so.2.4 libsmapi.so.2

cd /usr/lib64 ; rm -rf libsmapi.so.2.4
ln -sf /usr/local/lib/libsmapi.so.2.4.0 libsmapi.so.2.4

else
echo 
fi

if [ -e /usr/lib ]; 
then
echo  "Found directory for 32-bit libraries... "
cd /usr/lib ; rm -rf libsapi.so
ln -sf /usr/local/lib/libsmapi.so.2.4.0 libsmapi.so
cd /usr/lib/ ; rm -rf libfidoconfig.so.1.4
ln -sf /usr/local/lib/libfidoconfig.so.1.4.0 libfidoconfig.so.1.4
cd /usr/lib ; rm -rf libfidoconfig.so
ln -sf /usr/local/lib/libfidoconfig.so.1.4.0 libfidoconfig.so
cd /usr/lib ; rm -rf libsmapi.so.2
ln -sf /usr/local/lib/libsmapi.so.2.4 libsmapi.so.2
cd /usr/lib ; rm -rf libsmapi.so.2.4
ln -sf /usr/local/lib/libsmapi.so.2.4.0 libsmapi.so.2.4
else
echo
fi

echo ''
echo '-----------------------------------------------------'
echo "Relinking done!                                      "
echo '-----------------------------------------------------'
echo ''

} 
f1 "${VAR_01}"
#End of relinkapps.sh

