
English-readme of fidoip   
===========================

* This instruction intended only for English spoken users. If you are Russian please use only Russian documentation fido.rus.* files

Updated version of this document you could find at http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=English-readme
===========================

  Contents

    * 1 fidoip - software installation package for FreeBSD, Linux, Windows and DragonFly BSD
    * 2 Installation fidoip in FreeBSD
    * 3 Installation fidoip in DragonFly BSD
    * 4 Installation fidoip for Slackware 32-bit and Slackware 64-bit and Slamd64
    * 5 Installation fidoip for Arch Linux
    * 6 Installation on other Linux Distros
    * 7 Installation on Windows
    * 8 Using fidoip in Windows
    * 9 Using fidoip in FreeBSD/Linux/DragonFly BSD
    * 10 Configuration files of fidoip in Windows


	1. fidoip - SOFTWARE INSTALLATION PACKAGE FOR FREEBSD, LINUX, WINDOWS AND DRAGONFLY BSD
 

Basically fidoip  intended for IP-points, but with additional adjustment of configuration files can be a basis for installation of IP-node. One of useful features fidoip is cross-platform installation, you could ease and quickly move from Windows to any modern distribution of Linux, and then from Linux migrate to FreeBSD or DragonFly BSD, and then to return back to Windows using your bases of fido-messages. Besides of this, you can use USB-flash disk as storage of bases of messages that will allow you to use your fido on different PCs and on various operating systems in the same time. Installation of fidoip was tested at Slackware, Slamd64, Fedora Core, OpenSUSE, Ubuntu, Mandriva and Arch Linux, FreeBSD, DragonFly BSD and Windows XP/Vista/Windows 7.

fidoip - (fido software installation package of binkd, husky hpt and GoldEd-NSF ) consists of: 

Contents of archive fidoip-1.0.5_2.tar:

   * fido_slack.sh - script for starting creation Slackware packages via SlackBuilds;
   * fido_slamd64.sh - script for starting creation packages via SlackBuilds for Slamd64(64-bit Slackware);
   * fido_arch.sh - script for starting creation and installation of Acrh Linux packages for x32 and 64-bit;
   * fido_freebsd.sh - script for starting creation and installation packages of binkd, husky hpt and Golded-NSF via modified and updatetd by me FreeBSD ports;
   * fido_dragonflybsd.sh - script for starting creation and installation packages of binkd, husky hpt and Golded-NSF on DragonFly BSD;
   * fido_linux.sh - script for installing of binkd, husky hpt and GoldEd-NSF on any 32-bit Linux distros. This script do not create packages as this done mentioned above scripts;
   * fido_linux.64.sh - the same as previous but run it only on 64-bit Linux distros;
   * fidoip_win-1.0.5_2.zip - already compiled and prepared for installation archive with binkd, husky hpt and GoldED binaries and scripts for 32-bit and 64-bit Windows;
   * setup_config.bash - script for creation your configuration of binkd, husky hpt and golded for you on Unix-like OS;
   * set_perm.sh - script for setting right permission for user;
   * relinkapps.sh - service script, intended to run after installation on some linux distros;
   * multi-configs.bash - script for make multiply installation of fidoip at on PC.
   * fidoip_binary.sh - script for binary installation fidoip on Linux; 
   * lnx-packages - catalog with 32-bit and 64-bit Debian/Ubuntu packages;
   * fidomail  - script for notification on FreeBSD/Linux/DragonFly BSD desktop(required package libnotify and intented to use in crontab: */50 * * * * /usr/local/bin/fidomail >/dev/null 2>&1 )
   * nowplaying_fidoip_plugin.tar - Now Playng plugins for FreeBSD/Linux/DragonFly BSD desktops and Amarok, Audacious, XMMS and Rhythmbox( extract this file to you home directory and use cron */1 * * * * /home/your_login/.fidoip/*nowplay to run  /home/your_login/.fidoip/nowplay or use screen - screen /home/your_login/.fidoip/*start-nowplay.sh to make np file for GoldEd - /home/your_login/.fidoip/NowPlaying.txt 


New Hypertext FIdonet technology - Fidonet Global Hypertext Interface

fidoip venison 1.0.5_2 support Fidonet Global Hypertext Interface FGHI. Author FGHI and idea of Fidonet Global Hypertext Interface is Sergey Sokoloff (aka Mithgol the Webmaster - system operator of node 2:5063/88). Description of FGHI standard on English you could find in http://fghi.pp.ru/?area://Ru.FTN.Develop/?msgid=2:5063/88+4a0d1707. Standard FHGI was impemented by Konstantin Kuzov, sysop of node 2:5019/40) by changing GoldEd+ to fork named GoldEd-NSF. Configuration of fidoip is already setup with using FGHI by this way:

If you press ' key and select URL which you whould like to go. Please see Picture 1 1 http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip3.jpg

If this is Internet URL then browser will start in athother windows and open URL. Pleas see Picture 2 http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip4.jpg


If you select URL to FidoNet message there are possible to variant:

1. If message is already in local database then GoldEd-NSF will open message using the link.

2. If message is not in local database of messages then GoldEd-NSF will pass the URL to wget which download message FGHI-compatible gateway which have database of messages for different areas http://fghi.pp.ru/?list Then message will downloaded and GoldEd-NSF open it.


Also there are keys:

"\" - to go to first found URL from top of message

"/" - insert URL and to to this URL - Please see Picture 3 http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip5.jpg


And in configuration of template golded.tpl there used @OFGHIUrl macro which is useful to set URL to original FidoNet message when you are forward this message or reply on it.


       2. INSTALLATION fidoip IN FREEBSD

1. Setup FreeBSD ports collection and update it as this described in FreeBSD Handbook; 2. As root extract fidoip from tarball: 
su
tar -xpf fidoip-1.0.5_2.tar
cd fidoip-1.0.5
3. Connect to Internet, then run script fido_freebsd.sh: 
./fido_freebsd.sh login
where login - is login name you using(NOT root!) 
This will start creation and installation all necessary packages on FreeBSD then install binkd, husky hpt and Golded-NSF. If you wiil see questions "Run binkd as user [fido]?" ? "Enter group name for binkd user [fido]?" - simply press ENTER. 
4. After previous step are finished then run setup_config.bash: 

/usr/local/bin/bash ./setup_config.bash
This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node, password and then will create configuration for you. 
5. For removing Russian language support run script: 
/usr/local/bin/bash ./clear_fidoip_files.sh

6. Then you need set right permissions using set_perm.sh script: 
./set_perm.sh login
where login is your login name. Login as your login and use recv script for reciving, send script for senting and ge - for starting Golded-NSF. These scripts located in /usr/local/bin/ directory. 

	3. INSTALLATION fidoip IN DRAGONFLY BSD

1. Setup pkgsrc collection and update it as this described in DragonFly BSD Handbook:

 su
 cd /usr ; make pkgsrc-create


2. As root extract fidoip from tarball:

tar -xpf fidoip-1.0.5_2.tar
cd fidoip-1.0.5

3. Connect to Internet, then run script fido_dragonflybsd.sh:

./fido_dragonflybsd.sh login

where login - is login name you using(NOT root!)

This will start creation and installation all necessary packages on DragonFly BSD then install binkd, husky hpt and Golded-NSF.

4. After previous step are finished then run setup_config.bash:

/usr/pkg/bin/bash ./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node, password and then will create configuration for you.

5. For removing Russian language support run script:

/usr/pkg/bin/bash ./clear_fidoip_files.sh


6. Then you need set right permissions using set_perm.sh script:

./set_perm.sh login

where login is your login name. Login as your login and use recv script for reciving, send script for senting and ge - for starting Golded-NSF. These scripts located in /usr/local/bin/ directory. 



	4. INSTALLATION fidoip FOR SLACKWARE 32-BIT AND SLACKWARE 64-BIT AND SLAMD64

1. As root extract fidoip from tarball:


su
tar -xpf fidoip-1.0.5_2.tar
cd fidoip-1.0.5


2. If you are using Slackware Linux run script

./fido_slack.sh login

where login - is your login name you using(NOT root!)

If you using 64-bit Slackware instead of running of fido_slack.sh run this script:

./fido_slack64.sh login

    * (if you run old Slackware version and Slamd64 you will need to run scripts fido_slack-old.sh or fido_slack64-old.sh the same way as described above) 

3. After finishing of creation package in /tmp, then install it:

installpkg /tmp/binkd*.txz installpkg /tmp/husky*.txz installpkg /tmp/golded*.txz

    * (if you run old Slackware version and Slamd64 you will need to change extension in above commands to *.tgz) 

4. For relinking of links and libraries run script:

./relinkapps.sh

5. Run setup_config.bash:

./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node, your password and then will create configuration for you.

6. For removing Russian language support run script:

./clear_fidoip_files.sh

7. Then you need set right permissions using set_perm.sh script:

./set_perm.sh login

Where login is your login name.

Login as your login and use recv script for receiving, send script for sending and ge - for starting Golded-NSF. These scripts located in /usr/local/bin/ directory.


	5.  INSTALLATION fidoip FOR ARCH LINUX

1. As root extract fidoip from tarball:

su
tar -xpf fidoip-1.0.5_2.tar
cd fidoip-1.0.5

2. As root run script

./fido_arch.sh login

where login - is login name you using(NOT root!)

This will start creation and installation all necessary packages.

3. After finishing of package creation as root run./relinkapps.sh for relinking of links and libraries:

./relinkapps.sh

4. Then run as root setup_config.bash:

./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node and then will create configuration for you.

5. For removing Russian language support as root run script:

 ./clear_fidoip_files.sh

6. Then you need set right permissions using set_perm.sh script:

./set_perm.sh login

Where login is your login.

Login as your login and use recv script for receiving, send script for sending and ge - for starting Golded-NSF. These scripts are in /usr/local/bin/ directory. Do not forget to set PATH /usr/local/bin/ in your profile /home/your_login/.bashrc:

export PATH=$PATH:/usr/local/bin


	6.  INSTALLATION ON OTHER LINUX DISTROS

1. As root extract fidoip from tarball:

su
tar -xpf fidoip-1.0.5_2.tar
cd fidoip-1.0.5

2. Connect to Internet and install all software packages that required for installation of fidoip and using of binkd, husky hpt and Golded-NSF:

For Debian/Ubuntu you need install these packages:

sudo apt-get -y install build-essential unzip zip bzip2 libncurses5-dev gettext wget xutils screen texinfo

For OpenSuse you need install these packages:

yast2 -i gcc gcc-c++ ncurses-devel texinfo make

For Fedora Core you need install these packages:

yum gcc gcc-c++ ncurses-devel screen texinfo gettext wget

For Mandriva you need install these packages:

su root
urpmi.update -a
urpmi gcc
urpmi gcc-c++
urpmi libncurses-devel
urpmi texinfo
urpmi gettext
urpmi screen
urpmi make
urpmi luit

For other, not mention Linux distros you need zip, unzip, bzip2, gcc, c++(g++) and ncurses-devel(or libncurses5-dev) and gettext(this package install on most all Linux by default)

3. Run script

./fido_linux.sh login

where login - is login name you using(NOT root!)

This will start compiling and installation binkd, husky hpt and Golded-NSF.

If you using 64-bit Linux distro instead of running of fido_linux.sh run this script:

./fido_linux.64.sh login

If you Ubuntu user use sudo for this and all below script.


Also if you are using Debian/Ubuntu instead of scripts fido_linux.sh and fido_linux.64.sh you could use packages:

for 32-bit Debian/Ubuntu

dpkg -i lnx-packages/32bit/deb/fidoip_1.0.5-2_i386.deb

for 64-bit Debian/Ubuntu

dpkg -i lnx-packages/64bit/deb/fidoip_1.0.5-2_amd64.deb
  


3. After finishing compiling and installation run ./relinkapps.sh for relinking of links and libraries:

./relinkapps.sh

4. Then run setup_config.bash:

./setup_config.bash

This script asks you some questions about your name, your FTN-address, your location, hostname/IP-address of your node and password and then will create configuration for you.

5. For removing Russian language support as root run script:

./clear_fidoip_files.sh

6. Then you need set right permissions using script set_perm.sh:

./set_perm.sh login

Where login is your login name.

Login as your login and use recv script for receiving, send script for sending and ge - for starting Golded-NSF. These scripts are in /usr/local/bin/ directory. Do not forget to set PATH /usr/local/bin/ in your profile /home/your_login/.bashrc:

export PATH=$PATH:/usr/local/bin


	7. INSTALLATION ON WINDOWS

1. Extract archive fidoip_win-1.0.5_2.zip in root directory of any logical disk. After extraction 2 directories will be created: \usr - for binaries and scripts \home - for fido messages bases

For example if you place fidoip_win-1.0.5_2.zip to root directory D: drive and extract. Then fidoip will be installed in d:\usr and d:\home directories. Or if you place fidoip_win32.zip to root directory of C: drive and extract then fidoip will be installed in c:\usr and c:\home directories.

2. Open with Notepad editor file \usr\setup_config.vbs. Change follow 8 rows:


const yourFullName = "Vasiliy Pampasov" - instead of Vasiliy Pampasov set here your name;

const yourFTNAddress = "2:5020/828.555" - Set here your FTN-address;

const yourStationName = "MyStation" - Set here name of your station;

const yourLocation = "Russia, Moscow" - Set here your location;

const yourUplinkName = "Kirill Temnenkov" - Set here name of Uplink;

const uplinkFTNAddress = "2:5020/828" - Set here Uplink FTP-address;

const uplinkServerName = "temnenkov.dyndns.org" - Set here host name or IP of you boss;

const yourPassword = "12345678" - Set here you password.


After you edit this file then save it and close.

3. Run \usr\setup_config.vbs file by clickig mouse ot it twice. This file will make configuration files for you.

Binkd and Husky hpt config files located in \usr\fidoconf\

Check them and change zone 2 to your zone - configurator setup_config.vbs do not do it yet.
[edit] Using fidoip in Windows

For receiving and sending messages use \usr\bin\rs.bat script. For starting Golded-NSF use script \usr\bin\ge.bat. You could create shortcut to these file and place it on Desktop.


	8. USING fidoip IN FREEBSD/LINUX/DRAGONFLY BSD

Script /usr/local/bin/recv - use for receiving only;

Script /usr/loca/bin/send - use for receiving and sending;

Script /usr/local/bin/ge - use for starting of Golded-NSF

Configuration files in FreeBSD/Linux located in /usr/local/etc/:

/usr/local/etc/binkd.cfg - settings of binkd mailer;

/usr/local/etc/fido/config - setting of husky hpt tosser;

/usr/local/etc/golded+/golded.cfg - settings of Golded-NSF editor;


	9. CONFIGURATION FILES OF fidoip IN WINDOWS

Binkd and Husky hpt config files located in \usr\fidoconf\

Check them and change zone 2 to your zone - configurator setup_config.vbs do not do it yet.

Golded config, template and other files located in \usr\golded+\ For English language users and other users your need clean up Russian specific Cyrillic setting in \usr\golded+\ golded.cfg ATTENTION! For English and other Non-Russian users for Windows your need comment Russian specific Cyrillic setting in \usr\golded+\golded.cfg . Here is this option:

;XLATPATH 
;XLATLOCALSET 
;XLATIMPORT 
;XLATEXPORT 
;XLATCHARSET 
;XLATCHARSET
;LOADLANGUAGE 

Then remove file \usr\golded+\goldlang.cfg. In file \usr\golded+\golded.cfg you need to change description of echoes, options of ImportBegin and ImportEnd. Edit also file \usr\golded+\golded.tpl and clean up Russian in this template. 

