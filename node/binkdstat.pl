#!/usr/bin/perl

############################################################################
# ��������� ���������� ��� binkd   v. 0.1 beta4 Christmas version
# (c) Dmitry Sergienko, 2:464/910@fidonet, dmitry@trifle.net  06.01.2002
# ������������� ��� perl 5.005_03 for i386-linux
# binkd 0.9.3h
# ��� ���������� ������ ������� ����������� ���� binkd ������ ���� >= 2
# Freeware, ���������������� "AS IS".
############################################################################

use Time::Local;

$logFileName="/home/fido/binkd.log";
$sec_in_day=86400;

%months=qw(
    Jan	1
    Feb	2
    Mar	3
    Apr	4
    May	5
    Jun	6
    Jul	7
    Aug	8
    Sep	9
    Oct	10
    Nov	11
    Dec	12 );

$VERSION_STR="\nGenerated on fidoip NMS by BinkDStat 0.1 beta4 Christmas edition\n";

sub sortByAddr
{
    ($za, $na, $fa, $pa)=split (/[:\/\.]/, $a);
    ($zb, $nb, $fb, $pb)=split (/[:\/\.]/, $b);
    return ($za<=>$zb)||($na <=>$nb)||($fa<=>$fb)||($pa<=>$pb);
}


sub Usage
{
    print "BinkDStat 0.1 beta (c) Dmitry Sergienko, 2:464/910, trooper\@unity.net\n";
    print "\nUsage:\n";
    print "\tbinkdstat [options]\n";
    print "\nOptions:\n";
    print "\t-dN\t\tget statistics for last N days\n";
    print "\t-ffilename\tbink log filename\n";
    print "\t-h\t\tshow this help screen\n";    
    print "\t--help\t\tthe same\n\n";        
    exit(3) ;
}

sub getParm
{
    $lastdays=0;
    foreach $arg (@ARGV)
    {
	if ($arg=~/-d(\d+)/) { $lastdays=$1; };
	if ($arg=~/-f(.*)/) 
	{   $logFileName=$1;   
	    $tmp=$ENV{HOME};
	    if ($logFileName=~/\~(.*)/) {$logFileName=sprintf "%s/%s", $tmp, $1;}; };
	if ($arg=~/--help/)  { Usage; };
	if ($arg=~/-h/)      { Usage; };
    }
    
}

sub dateValid 
{
    if ($_[0]=~/^\s*$/) { return 0; }
    $_[0]=~/(\d+)\s+(\w+)\s+\d+:\d+:\d+/;
    if ($1 eq "" || $2 eq "") { print STDERR "dateValid: $_[0]\n"; return 0;}
    $got_day=timelocal(0, 0, 0, $1, $months{$2} - 1, $thisyear);
    if ($got_day > $nowtime) {
        # Happy New Year :)
        $got_day=timelocal(0, 0, 0, $1, $months{$2} - 1, $thisyear - 1); 
    }
    if (($nowtime-$got_day)/$sec_in_day > $lastdays) 
    { return 0; } else { return 1; };
}

sub b2eng
{
    if ($_[0]<=1024) { return $_[0]; }
    elsif ($_[0]<=1048576) {$res=sprintf "%4.1fk", ($_[0]/1024); return $res; }
    elsif ($_[0]>1048576)  {$res=sprintf "%4.1fM", ($_[0]/1048576); return $res; }
}

sub getStartDate
{
    if ($_[0]=~/^\s*$/) { return 0; }
    $_[0]=~/(\d+)\s(\w+)\s\d+:\d+:\d+/;
    if ($1 eq "" || $2 eq "" ) { print STDERR "getStartDate: $_[0]\n"; exit (1); }
    @s=localtime();
    $tmp=timelocal(0, 0, 0, $1, $months{$2} - 1, $thisyear);
    if ($tmp > $nowtime) {
        # Happy New Year :)
        $tmp=timelocal(0, 0, 0, $1, $months{$2} - 1, $thisyear - 1);
    }
    if ($startdate>$tmp) { $startdate=$tmp};
    $gotFirstDate=1;
}

sub getStat 
{
    while($line=<LOGFILE>) 
    {
	chomp($line);
        if ($gotFirstDate!=1) {getStartDate($line);}
        if ($lastdays!=0) {if (dateValid($line) eq "0" ) { next };}
        if ($line=~/done \(\w+ (\S+)\@\w+, \w+, S\/R: (\d+)\/(\d+) \((\d+)\/(\d+)/) 
	{
            $addr=$1;
            $system{$addr}{sent}+=$4;
            $system{$addr}{recv}+=$5;
	    $sent+=$4;
	    $recv+=$5;
            $system{$addr}{scnt}++;
	    $counter++;
	};
	
	if ($line=~/rcvd/)
	{
	    $line=~/(\d+.\d+) CPS, (\S+)\@/;
	    $addr=$2;
	    $system{$addr}{rcps}+=$1;
	    $system{$addr}{rncps}+=1;
	};
	
	if ($line=~/sent/)
	{
	    $line=~/(\d+.\d+) CPS, (\S+)\@/;
	    $addr=$2;
	    $system{$addr}{scps}+=$1;
	    $system{$addr}{sncps}+=1;
	};
	
    }
}
    

sub writeStat
{
print "               #################################################\n";
print "               |               Sessions  Summary               |\n";
print "               #################################################\n\n";
$tmp=localtime($startdate);
$time=localtime;
if ($lastdays eq "0")
{ print "Statistics from $tmp, generated on $time\n"; } else
{    print "Statistics for last $lastdays day[s], generated on $time\n"; }
if ((keys %system) eq "0") { printf "\nThere are no sessions.\n"; 
    print $VERSION_STR;
exit(1);}

format STDOUT =
| @<<<<<<<<<<<<<<<<<<<<<<<<<<< |   @####|@>>>>>>>|@>>>>>>>|@#####.##|@#####.##
$addr, $system{$addr}{scnt},b2eng($system{$addr}{sent}),b2eng($system{$addr}{recv}),$system{$addr}{rcps}/$system{$addr}{rncps},$system{$addr}{scps}/$system{$addr}{sncps}
.

print " ##############################################################################\n";
print " | Adress                       |Sessions|  Sent  |Received| CPS in  | CPS out|\n";
print " ##############################################################################\n";
foreach $addr (sort { sortByAddr } keys %system )
{
    if ($system{$addr}{rncps} eq "") {$system{$addr}{rncps}=1}
    if ($system{$addr}{sncps} eq "") {$system{$addr}{sncps}=1;}	        
    write();
    $rcps+=$system{$addr}{rcps}/$system{$addr}{rncps};
    $scps+=$system{$addr}{scps}/$system{$addr}{sncps};
    $ncps+=1;
}
if ($ncps!=0)
{
    $RCPS=$rcps/$ncps;
    $SCPS=$scps/$ncps;
}
print " ##############################################################################\n\n";
format STDOUT_BTM =
 ##############################################################################
| Total received   : @>>>>>>>>>>>>>>>>> | Total sessions   :        @>>>>>>>> |
b2eng($recv), $counter
| Total sent       : @>>>>>>>>>>>>>>>>> | Avgerage CPS in  :        @#####.## |
b2eng($sent), $RCPS
| Total traffic    : @>>>>>>>>>>>>>>>>> | Avgerage CPS out :        @#####.## |
b2eng($sent+$recv), $SCPS
 ##############################################################################
.
$~="STDOUT_BTM";
write();
}

#	***********************************************
#	*************	 Entry point	***************
#	***********************************************

getParm;
open(LOGFILE, $logFileName) || die "Can't open $logFileName.\n";
$startdate=time();
$nowtime=$startdate;
@now=localtime();
$thisyear=$now[5];
getStat;
writeStat;
close(LOGFILE);		
print $VERSION_STR;
exit(255);
