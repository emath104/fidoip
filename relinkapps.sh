#!/bin/sh
cd /usr/local/sbin ; rm -rf binkd
cd /usr/local/sbin ; ln -sf binkd-0.9.9 binkd
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
