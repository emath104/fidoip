#!/bin/sh

set -u
set -e

CWD=`pwd`

OSNAME=`uname`

cd /tmp/
rm -rf golded+
rm -f distinfo*
rm -f PKGBUILD
cvs -d:pserver:anonymous@golded-plus.cvs.sourceforge.net:/cvsroot/golded-plus login
cvs -z3 -d:pserver:anonymous@golded-plus.cvs.sourceforge.net:/cvsroot/golded-plus co -P .
tar -cjpf gps90710.tb2 golded+
cp -v gps90710.tb2 "$CWD"

echo "Golded+ archive updated successfully"

cd $CWD
rm -rf 2
mkdir 2
cd 2
tar -xjpf ../../arch.abs.tar.bz2 -C .

if [ "Linux" = "$OSNAME" ]; then
newmd=`md5sum ../gps90710.tb2 | sed 's| ../g.*||g' | sed "s| ||g"`
else
newmd=`md5 ../gps90710.tb2 | grep MD5 | sed "s|.*= ||g" |  sed "s|.*= ||g"`
fi

oldmd=`grep md5sums var/abs/local/golded/PKGBUILD | sed "s|').*||" | sed "s|.*('||g"`

echo "Changing MD5 sum "$oldmd" to "$newmd""

sleep 2

sed "s|"$oldmd"|"$newmd"|g" var/abs/local/golded/PKGBUILD > /tmp/PKGBUILD
cp -v /tmp/PKGBUILD var/abs/local/golded/PKGBUILD
tar -cjpvf ../../arch.abs.tar.bz2 .
cd ..
rm -rf 2
echo "Golded+ checksum updated successfully"
