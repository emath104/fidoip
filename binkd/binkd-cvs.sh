#!/bin/sh

set -u
set -e

CWD=`pwd`

OSNAME=`uname`

cd /tmp/
rm -f distinfo*
rm -rf binkd-1.0.0
rm -rf binkd
cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs login
cvs -d :pserver:binkd@cvs.happy.kiev.ua:/cvs co binkd
mv binkd binkd-1.0.0
zip binkd100.zip -r binkd-1.0.0
cp -v binkd100.zip "$CWD"
echo "Binkd archive updated successfully"
cd "$CWD"
rm -rf 1
mkdir 1
cd 1
tar -xzpf ../../bsd_ports.tar.gz -C .
oldmd=`cat usr/ports/net/binkd-fidoip/distinfo | grep MD5 | sed "s|.*= ||g" | sed "s| ||g"`
oldsha=`cat usr/ports/net/binkd-fidoip/distinfo | grep SHA256 | sed "s|.*= ||g" | sed "s| ||g"`
oldsiz=`cat usr/ports/net/binkd-fidoip/distinfo | grep SIZE | sed "s|.*= ||g"`

if [ "Linux" = "$OSNAME" ]; then
newmd=`md5sum ../binkd100.zip | sed 's| ../b.*||g' | sed "s| ||g"`
newsha=`sha256sum ../binkd100.zip | sed 's| ../b.*||g' | sed "s| ||g"`
newsiz=`stat --format=%s ../binkd100.zip`
else
newmd=`md5 ../binkd100.zip | grep MD5 | sed "s|.*= ||g" |  sed "s|.*= ||g"`
newsha=`sha256 ../binkd100.zip | grep SHA256 | sed "s|.*= ||g" |  sed "s|.*= ||g"`
newsiz=`stat -f %z ../binkd100.zip`
fi

echo "Changing MD5 "$oldmd" to "$newmd""
echo "Changing SHA256 "$oldsha" to "$oldsha""
echo "Changing SIZE "$oldsiz" to "$oldsiz""

sleep 5

sed "s|"$oldmd"|"$newmd"|g" usr/ports/net/binkd-fidoip/distinfo > /tmp/distinfo1
sed "s|"$oldsha"|"$newsha"|g" /tmp/distinfo1 > /tmp/distinfo2
sed "s|"$oldsiz"|"$newsiz"|g" /tmp/distinfo2 > usr/ports/net/binkd-fidoip/distinfo 

tar -czpvf ../../bsd_ports.tar.gz .
cd ..
rm -rf 1

rm -rf 2
mkdir 2
cd 2
tar -xjpf ../../arch.abs.tar.bz2 -C .
oldmd=`grep md5sums var/abs/local/binkd/PKGBUILD | sed "s|').*||" | sed "s|.*('||g"`
sed "s|"$oldmd"|"$newmd"|g" var/abs/local/binkd/PKGBUILD > /tmp/PKGBUILD
cat /tmp/PKGBUILD > var/abs/local/binkd/PKGBUILD
tar -cjpf ../../arch.abs.tar.bz2 .
cd ..
rm -rf 2
echo "Binkd checksum updated successfully"


