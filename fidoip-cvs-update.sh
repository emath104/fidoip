#!/bin/sh

echo "fidoip cvs update for binkd and golded+"
echo "will automatically updated sources and checksums for Arch"
echo "ABS and FreeBSD ports"

CVS=`which cvs`

if [ -x "$CVS" ]; then
echo "For any prompt press Enter"
else
echo "cvs isn't found."
echo "Install cvs before and try again."
exit
fi

sleep 3

cd golded
sh ./golded-cvs.sh

cd ../binkd
sh ./binkd-cvs.sh
 


