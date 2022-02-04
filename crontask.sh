#!/bin/sh
#/* Copyright (C) 2007-2012 Maxim Sokolsky, 2:5020/828.777.
#   This file is part of fidoip. It is free software and it is covered
#   by the GNU general public license. See the file LICENSE for details. */

# Script to automatic install crond tasks from node/crontab.cfg.template-node

USERNAME=`whoami` ; T1="root"
if [ "$T1" = "$USERNAME" ]; then 
echo  'Please do not run this script as root'
echo  'Login as user for whom you installed fidoip node and run binkd' ; exit
fi

set -e
set -u

TMPOUT="$(mktemp)" || echo "Error creating temporaty file on /tmp/"
set +e
crontab -l  > $TMPOUT
set -e

if grep "fido\.monthly" $TMPOUT 
then
    echo
    echo "I see upper line in crontab for user "$USERNAME"."
    echo "Seems fidoip NMS tasks already installed."
    echo "Stop proceeding. If you would like change tasks edit crontab manually."
else
    echo "Installing fidoip NMS crontab tasks for node"
echo
cat node/crontab.cfg.template-node >> $TMPOUT
crontab $TMPOUT
echo 
crontab -l
echo ""
echo "Done. Crontab tasks for user "$USERNAME" for fidoip NMS installed successfully!"
fi

#rm -f $TMPOUT



