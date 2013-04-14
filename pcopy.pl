#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# this is my perl script to copy a 
# a file that the user inputs
# to another one and takes the arguements from the cmd
###############################
#print "$ARGV[0]\n";#debug
#print "$ARGV[1]\n";#debug

open FH,"<$ARGV[0]";

if(-e $ARGV[0]||-r $ARGV[0]){}
else
	{die"$ARGV[0] doesn't exist\n";}
	
open FH1,">$ARGV[1]";
if(-e $ARGV[1]||-r $ARGV[1]){}
else
	{die "$ARGV[1] doesn't exist\n";}
	
$line="";

while($line=<FH>)
{
	print FH1 <FH>;
}
close FH;
close FH1;
print "$ARGV[0] written to $ARGV[1]\n";

