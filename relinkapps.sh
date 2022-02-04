#!/bin/sh
# Usage:  relinkapps.sh
CWD=`pwd`
OSNAME=`uname`
USERNAME=`whoami`

T1="root"
if [ "$T1" = "$USERNAME" ]; then
echo  ''
else
echo 'Please run this script as root' ; exit
fi

f1()

{
echo ''
echo '-----------------------------------------------------'
echo "Relinking libararies and binaries...                    "
echo '-----------------------------------------------------'
echo ''

echo "Relinking binkd binary"

cd /usr/local/sbin ; rm -rf binkd
cd /usr/local/sbin ; ln -sf binkd-0.9.9 binkd

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
fi

echo ''
echo '-----------------------------------------------------'
echo "Relinking done!                                      "
echo '-----------------------------------------------------'
echo ''

} 
f1 "${VAR_01}"
#End of relinkapps.sh

