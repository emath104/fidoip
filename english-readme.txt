FIDOIP - SOFTWARE INSTALLATION PACKAGE FOR FREEBSD, LINUX, WINDOWS AND DRAGONFLY BSD 

*''' This instruction intended only for English spoken users. If you are Russian please use ONLY Russian documentation'''

[http://sourceforge.net/projects/fidoip fidoip] intended both for IP-points and FIDONet sysop as IP-node. 

One of useful features fidoip is cross-platform installation, you could ease and quickly move from Windows to any modern distribution of Linux, and then from Linux migrate to FreeBSD or DragonFly BSD, and then to return back to Windows using your bases of fido-messages. Besides of this, you can use USB-flash disk as storage of bases of messages that will allow you to use your fido on different PCs and on various operating systems in the same time. Installation of fidoip was tested at Slackware, Slamd64, Fedora Core, OpenSUSE, Ubuntu, Mandriva and Arch Linux, FreeBSD, DragonFly BSD and Windows XP/Vista/Windows 7/Windows 8.

For quick understanding basic functionality of fidoip please refer to digest presentation '''[http://sf.net/projects/fidoip/files/media/fidoip-design-and-features.pdf Design and features of fidoip) ]''' 37 slides, 493,6 Kb, PDF, which contains brief decryption both on English and Russian languages, with pictures.

Setup fidoip for IP-point or creating full automatic IP-node can be done very quickly in 5 minutes or less.

If you are newbie and have never worked in FIDONet please see a short video training course for points "The first steps to FIDONet network". In this video (file [http://downloads.sourceforge.net/project/fidoip/media/videoguide/first-steps-to-fidonet-video-guide.avi '''first-steps-to-fidonet-video-guide.avi'''], 7 minutes, size 16,4 Mb, MPEG-4) clearly shows how to quickly and easily connect to a FIDONet, configure the software and get started to work.

If you are going to become sysop of FIDONet and create you own FIDONet node it is also highly recommended for viewing two training courses:

1. [http://sf.net/projects/fidoip/files/media/videoguide/setup-fido-node-on-linux.wmv '''"FIDONet Node on Linux" (Setup FIDONet node on Linux)'''], 25.9 Mb, format Windows Media Video, duration of 8 minutes 06 seconds - a short training course on the installation automatic node on LINUX;
2. [http://sf.net/projects/fidoip/files/media/videoguide/setup-fido-node-on-windows.wmv '''"FIDONet node on Windows" (Setup FIDONet node on Windows)'''], 25.5 Mb, format Windows Media Video, duration of 8 minutes 13 seconds - a short training course for installation FIDOnet node on Windows. 

In these videos clearly shows how easily and quickly install and configure you own FIDONet node, how to new add links and points to your node configuration via fidoip NMS(Node Management System) and perform other node's administrative tasks via fidoip admin's utilities.

If you need install IP-node please refer to '''"[http://sf.net/projects/fidoip/files/media/setup-fido-node-on-linux.pdf Setup FIDONet node on Linux]''' 15 slides , 78,8 Kb, PDF, or '''"[http://sf.net/projects/fidoip/files/media/setup-fido-node-on-windows.pdf Setup FIDONet node on Windows]''' 15 slides, 84,8 Kb, PDF, which contains detailed instructions on English and Russian, recommended for FIDONet sysop and points, who would like become IP node or manage IP node using fidoip.


fidoip – (fido software installation package of binkd, husky hpt and GoldEd-NSF ) consists of:

 Contents of archive fidoip-1.0.5_4.tar:
    * ChangeLog - changelog on Russian;
    * crontask.sh – script for installing polling tasks for crond daemot and other system tasks(only for IP-node); 
    * clear_fidoip_files.sh - Script for deinsatlling and clean up fidoip from your computer(do not delete bases);
    * english-readme.txt - this text;
    * fido_slack.sh – script for starting creation Slackware packages via SlackBuilds;
    * fido_slamd64.sh - script for starting creation packages via SlackBuilds for Slamd64(64-bit Slackware);
    * fido_arch.sh – script for starting creation and installation of Acrh Linux packages for x32 and 64-bit;
    * fido_freebsd.sh - script for starting creation and installation packages of binkd, husky hpt and Golded-NSF via modified and updatetd by me FreeBSD ports;
    * fido_dragonflybsd.sh - script for starting creation and installation packages of binkd, husky hpt and Golded-NSF on DragonFly BSD;
    * fido_linux.sh – script for installing of binkd, husky hpt and GoldEd-NSF on any 32-bit Linux distros. This script do not create packages as this done mentioned above scripts;
    * fido_linux.64.sh – the same as previous but run it only on 64-bit Linux distros;
    * fidoip_win-1.0.5_4.zip – already compiled and prepared for installation archive with binkd, husky hpt and GoldED binaries and scripts for 32-bit and 64-bit Windows both for FIDONet client installation(IP-points) and FIDONet IP-nodes(IP-nodes);
    * setup_config.bash - script for creation IP-point  configuration of binkd, husky hpt and golded for you on Unix-like OS;
    * setup_node.bash - script for creation IP-node configuration of binkd, husky hpt and golded for you on Unix-like OS;
    * setup-fido-node-on-windows.pdf - English and Russian presentation describe fidoip node setup on Windows;
    * setup-fido-node-on-linux.pdf  - English and Russian presentation describe fidoip node setup on Linux;
    * set_perm.sh - script for setting right permission for user;
    * relinkapps.sh – service script, intended to run after installation on some linux distros;
    * multi-configs.bash - script for make multiply installation of fidoip at on PC.
    * fidoip_binary.sh - script for binary installation fidoip on Linux; 
    * packages - catalog with infornaton regarding fetching packages;
    * fidomail  - script for notification on FreeBSD/Linux/DragonFly BSD desktop(required package libnotify and intented 
 to use in crontab: */50 * * * * /usr/local/bin/fidomail >/dev/null 2>&1 )
    * nowplaying_fidoip_plugin.tar - Now Playng plugins for FreeBSD/Linux/DragonFly BSD desktops and Amarok, Audacious, XMMS and Rhythmbox( extract this file to you home directory and use cron */1 * * * * /home/your_login/.fidoip/*nowplay to run  /home/your_login/.fidoip/nowplay or use screen 
 screen /home/your_login/.fidoip/*start-nowplay.sh to make np file for GoldEd - /home/your_login/.fidoip/NowPlaying.txt 

'''New Hypertext FIdonet technology - Fidonet Global Hypertext Interface'''

fidoip venison 1.0.5_4 support Fidonet Global Hypertext Interface FGHI. Author FGHI and idea of Fidonet Global Hypertext Interface is Sergey Sokoloff (aka Mithgol the Webmaster - system operator of node 2:5063/88).  Description of  FGHI standard on English you could find in  http://fghi.pp.ru/?area://Ru.FTN.Develop/?msgid=2:5063/88+4a0d1707. Standard FHGI was impemented by Konstantin Kuzov, sysop of node 2:5019/40) by changing GoldEd+ to fork named GoldEd-NSF. Configuration of fidoip is already setup with using FGHI by this way: 
  
If you press ' key and select URL which you whould like to go. Please see Picture 1 1  http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip3.jpg

If this is Internet URL then browser will start in athother windows and open URL. Pleas see Picture 2  http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip4.jpg

 
If you select URL to FidoNet message there are possible to variants:

1. If message is already in local database then GoldEd-NSF will open message using the link.

2. If message is not in local database of messages then GoldEd-NSF will pass the URL to wget which download message FGHI-compatible gateway which have database of messages for different areas  http://fghi.pp.ru/?list Then message will downloaded and GoldEd-NSF open it.


Also there are keys:

"\"  - to go to first found URL from top of message

"/"  -  insert URL and to to this URL - Please see Picture 3 http://sourceforge.net/apps/mediawiki/fidoip/index.php?title=File:Fidoip5.jpg 


And in configuration of template golded.tpl there used @OFGHIUrl macro which is useful to set URL to original FidoNet message when you are forward this message or reply on it.

== General fidoip installation instruction==

fidoip could be used for:

* clients(FIDONet points) - as software package for client access to FIDONet(supported for FreeBSD, DragonFly BSD, Windows and Linux);
* system operators(aka FIDONet bosses) - as automatic installation package for IP-node creation (for Linux and Windows only). 

If you need FIDONet point please simple follow instruction in sections below for your OS and Linux distribution.

If you need setup FIDONet node please instead of using setup_config.bash(setup_config.vbs) use setup_node.bash(setup_node.vbs) configuration program. All other steps for nodes are the same as for point.

If you need install IP node please refer to '''"[http://sf.net/projects/fidoip/files/media/setup-fido-node-on-linux.pdf Setup FIDONet node on Linux]''' 15 slides , 78,8 Kb, PDF, or '''"[http://sf.net/projects/fidoip/files/media/setup-fido-node-on-windows.pdf Setup FIDONet node on Windows]''' 15 slides, 84,8 Kb, PDF, which contains detailed instructions on English and Russian, recommended for FIDONet sysop and points, who would like become IP node or manage IP node using fidoip.

Also if you are going to become sysop of FIDONet and create you own FIDONet node it is also highly recommended for viewing two training courses which could be downloaded from http://sourceforge.net/projects/fidoip/files/media/


==Installation fidoip in FreeBSD==

1. Setup FreeBSD ports collection and update it as this described in FreeBSD Handbook;
2. As root extract fidoip from tarball:

 su
 tar -xpf fidoip-1.0.5_4.tar
 cd fidoip-1.0.5

3. Connect to Internet, then run script fido_freebsd.sh:

 ./fido_freebsd.sh login

where login – is login name you using(NOT root!)

This will start creation and installation all necessary packages on FreeBSD then install binkd, husky hpt and Golded-NSF. If you wiil see questions "Run binkd as user [fido]?" è "Enter group name for binkd user [fido]?" – simply press ENTER.

4. After previous step are finished then run setup_config.bash:

 /usr/local/bin/bash ./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node, password and then will create configuration for you.

5. For removing Russian language support run script:

 /usr/local/bin/bash ./clear_fidoip_files.sh


6. Then you need set right permissions using set_perm.sh script:

 ./set_perm.sh login

where login is your login name.
Login as your login and use recv script for reciving, send script for senting and ge – for starting Golded-NSF. These scripts located in /usr/local/bin/ directory.


==Installation fidoip in DragonFly BSD==

1. Setup pkgsrc collection and update it as this described in DragonFly BSD Handbook:

  su
  cd /usr ; make pkgsrc-create


2. As root extract fidoip from tarball:

 tar -xpf fidoip-1.0.5_4.tar
 cd fidoip-1.0.5

3. Connect to Internet, then run script fido_dragonflybsd.sh:

 ./fido_dragonflybsd.sh login

where login – is login name you using(NOT root!)

This will start creation and installation all necessary packages on DragonFly BSD then install binkd, husky hpt and Golded-NSF. 

4. After previous step are finished then run setup_config.bash:

 /usr/pkg/bin/bash ./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node, password and then will create configuration for you.

5. For removing Russian language support run script:

 /usr/pkg/bin/bash ./clear_fidoip_files.sh


6. Then you need set right permissions using set_perm.sh script:

 ./set_perm.sh login

where login is your login name.
Login as your login and use recv script for reciving, send script for senting and ge – for starting Golded-NSF. These scripts located in /usr/local/bin/ directory.


== Installation fidoip for Slackware 32-bit and Slackware 64-bit and Slamd64  ==


1. As root extract fidoip from tarball:


 su
 tar -xpf fidoip-1.0.5_4.tar
 cd fidoip-1.0.5


2. If you are using Slackware Linux run script

 ./fido_slack.sh login

where login – is your login name you using(NOT root!)

If you using 64-bit Slackware instead of running of fido_slack.sh run this script:

 ./fido_slack64.sh login

* (if you run old Slackware version and Slamd64 you will need to run scripts fido_slack-old.sh or fido_slack64-old.sh the same way as described above)

3. After finishing of creation package in /tmp, then install it:

installpkg /tmp/binkd*.txz
installpkg /tmp/husky*.txz
installpkg /tmp/golded*.txz

* (if you run old Slackware version and Slamd64 you will need to change extension in above commands to *.tgz)

4. For relinking of links and libraries run script:

 ./relinkapps.sh

5. Then run as root setup_node.bash if you whould like to setup node configuration:

 ./setup_node.bash

Or run ./setup_config.bash if you whould like to configure point configuration:

 ./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node and then will create configuration for you.

6. For removing Russian language support run script:

 ./clear_fidoip_files.sh

7. Then you need set right permissions using set_perm.sh script:

./set_perm.sh login

Where login is your login name.

Login as your login and use recv script for receiving, send script for sending and ge – for starting Golded-NSF. These scripts located in /usr/local/bin/ directory.


== Installation fidoip for Arch Linux ==


1. As root extract fidoip from tarball:

 su
 tar -xpf fidoip-1.0.5_4.tar
 cd fidoip-1.0.5

2. As root run script

 ./fido_arch.sh login

where login – is login name you using(NOT root!)

This will start creation and installation all necessary packages.

3. After finishing of package creation as root run./relinkapps.sh for relinking of links and libraries:

 ./relinkapps.sh

4. Then run as root setup_node.bash if you whould like to setup node configuration:

 ./setup_node.bash

Or run ./setup_config.bash if you whould like to configure point configuration:

 ./setup_config.bash

This script will ask you some questions about your name, your FTN-address, your location, hostname/IP-address of your node and then will create configuration for you.

5. For removing Russian language support as root run script:

  ./clear_fidoip_files.sh

6. Then you need set right permissions using set_perm.sh script:

 ./set_perm.sh login

Where login is your login.

Login as your login and use recv script for receiving, send script for sending and ge – for starting Golded-NSF. These scripts are in /usr/local/bin/ directory. Do not forget to set PATH /usr/local/bin/ in your profile /home/your_login/.bashrc:

 export PATH=$PATH:/usr/local/bin


== Installation fidoip for Puppy Linux ==

Before installing fidoip for distribution Puppy:

1. Configure Internet connection, if it is not done yet;

2. Restart your computer - if you save in a personal storage file is not configured - customize by choosing the size of a personal storage file is larger than 1 Gb and partition the disk which store presonal storage file;

3. After rebooting verify that the connection to the Internet works and all your changes are exist;

Now you can install fidoip.

1. Open a terminal and download one of two files:

 wget -c http://falcony.googlecode.com/files/fidoip-1.0.5_3.pet

* Note 1. Package fidoip-1.0.5_3.pet suitable for most modern versions of the distribution Puppy, except versions Puppy 3.x and earler.

or

 wget -c http://falcony.googlecode.com/files/fidoip-1.0.5_3-puppy-old.pet

* Note 2. Package fidoip-1.0.5_3-puppy-old.pet suitable only for older versions of the distribution Puppy 3.x  which are recommended to use on old PC with processors i486, i586, AMD K5.

2. Open File Manager, navigate to the directory where you downloaded the file fidoip-1.0.5_3.pet (or fidoip-1.0.5_3-puppy-old.pet) and click on it. It ask to confirm activation and saving the package then click "Ok" or press "Save."


3. Then you would enter a terminal command:

 setup_fido


and press Enter.

4. Configurator whould ask you some for questions about names, passwords, addresses and cetera. This information nedded for connecting to the network FIDONet the first time  so before you will need find and to contact to system operator's of FIDONet.

5. After entering the configurator will show information you have entered. If everything is correct press y, then the configurator will configure FIDONet software. Then open configuratons files and clear russian description as it described below "Configuration files of fidoip".
For English language users and other users your need clean up Russian specific Cyrillic setting in /usr/local/etc/golded+/golded.cfg
Here is this option:

 ;XLATPATH 
 ;XLATLOCALSET 
 ;XLATIMPORT 
 ;XLATEXPORT 
 ;XLATCHARSET 
 ;XLATCHARSET
 ;LOADLANGUAGE 

Then remove file /usr/local/golded+/goldlang.cfg.
In file /usr/local/etc/golded+/golded.cfg you need to change description of echoes to english also

6. Then you should reboot your computer, make sure that fidoip and set up your configuration FIDO stored in personal storage file.

7. After rebooting, open the terminal. Run  commands:

 recv

to get the Fidonet messages .

To start the editor GoldED-NSF  use

 ge

command

Once you have read and replied to messages, exit from GoldED-NSF the editor and run the command:

 send

to send messages.


9. For your own convenience, change parameters of the terminal - set size, font, etc. This can be done by editing the settings URxvt .* in the file ~/.Xdefaults 


== Installation on other Linux Distros ==


1. As root extract fidoip from tarball:

 su
 tar -xpf fidoip-1.0.5_4.tar
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

where login – is login name you using(NOT root!)

This will start compiling and installation binkd, husky hpt and Golded-NSF.

If you using 64-bit Linux distro instead of running of fido_linux.sh run this script:

 ./fido_linux.64.sh login

If you Ubuntu user use sudo for this and all below script.


Also if you are using Debian/Ubuntu instead of scripts fido_linux.sh and fido_linux.64.sh you could use packages:

How to get packages see in file packages/README.txt inside fidoip-1.0.5_4.tar tarboll.
   

3. After finishing compiling and installation run ./relinkapps.sh for relinking of links and libraries:

 ./relinkapps.sh

4. Then run setup_node.bash if you whould like to setup node configuration:

 ./setup_node.bash

 Or run setup_config.bash if you whould like to setup point configuration:

 ./setup_config.bash

This script asks you some questions about your name, your FTN-address, your location, hostname/IP-address of your node and password and then will create configuration for you.

5. For removing Russian language support as root run script:

 ./clear_fidoip_files.sh

6. Then you need set right permissions using script set_perm.sh:

 ./set_perm.sh login

Where login is your login name.

Login as your login and use recv script for receiving, send script for sending and ge – for starting Golded-NSF. These scripts are in /usr/local/bin/ directory. Do not forget to set PATH /usr/local/bin/ in your profile /home/your_login/.bashrc:

 export PATH=$PATH:/usr/local/bin


== FIDOSlax Linux - distribution with FIDONet software included ==

FIDOSlax a distro has already integrated software for FIDONet network by using the method of FIDO over IP (binkd, husky hpt and GoldED-NSF). 

Connecting to FIDONet using FIDOSlax Linux is very easy - just boot FIDOSlax up and connect to FIDONet using simple configurator. 

FIDOSlax Linux - a compact and fast distribution of Linux which easily fits on a USB- drive, CD / DVD-ROM or a small hard disk partition. FIDOSlax Linux is hybrid distribution (ie, occupies an intermediate position between normal distributions and distributions Live) and allows the use of Linux and Open Source applications on the computer in parallel with the installed hard disk MS Windows. 

For more detailed information, see visit FIDOSlax Linux web site: 

http://code.google.com/p/fidoslax/wiki/MainPageEnglish 

== Installation on Windows ==


1. Extract archive fidoip_win-1.0.5_4.zip in root directory of any logical disk.
After extraction 2 directories will be created:
\usr – for binaries and scripts
\home – for fido messages bases

For example if you place fidoip_win-1.0.5_4.zip to root directory D: drive and extract. Then fidoip will be installed in d:\usr and d:\home directories. Or if you place fidoip_win32.zip to root directory of C: drive and extract then fidoip will be installed in c:\usr and c:\home directories.

2. Open with Notepad editor file \usr\setup_config.vbs. Change follow 8 rows:


const yourFullName = "Vasiliy Pampasov" - instead of Vasiliy Pampasov set here your name;

const yourFTNAddress = "2:5020/828.555" - Set here your FTN-address;

const yourStationName = "MyStation" - Set here name of your station;

const yourLocation = "Russia, Moscow" - Set here your location;

const yourUplinkName = "Kirill Temnenkov" – Set here name of Uplink;

const uplinkFTNAddress = "2:5020/828" - Set here Uplink FTP-address;

const uplinkServerName = "temnenkov.dyndns.org" – Set here host name or IP of you boss;

const yourPassword = "12345678" - Set here you password.


After you edit this file then save it and close.

3. Run \usr\setup_config.vbs file by clickig mouse ot it twice.
This file will make configuration files for you.

Binkd and Husky hpt config files located in \usr\fidoconf\

Check them and change zone 2 to your zone - configurator setup_config.vbs do not do it yet.   

== Using fidoip in Windows ==


For receiving and sending messages use \usr\bin\rs.bat script.
For starting Golded-NSF use script \usr\bin\ge.bat.
You could create shortcut to these file and place it on Desktop.


== Using fidoip in FreeBSD/Linux/DragonFly BSD ==


Script /usr/local/bin/recv – use for receiving only;

Script /usr/loca/bin/send – use for receiving and sending;

Script /usr/local/bin/ge – use for starting of Golded-NSF

Configuration files in FreeBSD/Linux located in /usr/local/etc/:

/usr/local/etc/binkd.cfg – settings of binkd mailer;

/usr/local/etc/fido/config – setting of husky hpt tosser;

/usr/local/etc/golded+/golded.cfg – settings of Golded-NSF editor;



== fidoip NMS (Node Management System) ==                                                          

The fidoip NMS system Node Management System provided commands for performing node administrative tasks.
Before running any command you need to login as "user"  for whom you installed fidip via network, sudo or su and then run command to manage node. 
For mode managing you could use following commands:

 addpoint..... to add new point to node configuration files
 addlink ..... to add new point
 addread ..... to set read-only for point 
 binkdsrv .... to restart binkd mailer daemon
 removepoint . to remove point from node congiuration files
 removelink .. to remove removelink
 removeread .. to unset read-only for point
 listpoint ... to list all points on the station
 listlink .... to list all links on the station    
 listread..... to list all read-only sets
 viewpoint.... to view settings of selected point
 fpasswd...... to change point's password
 ge........... to edit FIDONet messages in GoldEd editor in koi8-r codepage
 g............ to edit FIDONet messages in GoldEd editor in utf8 codepage
 rs;send...... to exchange data and poll with links manually
 

You could always see this list of command with sdescription if type

 fidohelp   


== Configuration files of fidoip ==

In Windows

Binkd and Husky hpt config files located in \usr\fidoconf\

Check them and change zone 2 to your zone if configurator setup_config.vbs didn't make it yet.   

Golded config, template and other files located in \usr\golded+\
For English language users and other users your need clean up Russian specific Cyrillic setting in \usr\golded+\ golded.cfg
ATTENTION! For English and other Non-Russian users for Windows your need comment Russian specific Cyrillic setting in \usr\golded+\golded.cfg .
Here is this option:

 ;XLATPATH 
 ;XLATLOCALSET 
 ;XLATIMPORT 
 ;XLATEXPORT 
 ;XLATCHARSET 
 ;XLATCHARSET
 ;LOADLANGUAGE 

Then remove file \usr\golded+\goldlang.cfg.
In file \usr\golded+\golded.cfg you need to change description of echoes, options of ImportBegin and ImportEnd.
Edit also file \usr\golded+\golded.tpl and clean up Russian in this template.

Under Windows you need to do it manually, if you are using Linux, FreeBSD or DragonFly BSD you could use clear_cyrillic.bash script for automatic clear of soupport of russian language.
