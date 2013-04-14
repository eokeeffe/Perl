#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# opening a file that the user inputs
###############################
print "Please enter the name of the file you wish to open\n";
$name=<STDIN>;

open FH,"<$name";

$line=",";
while($line=<FH>)
{
	print "$line\n";
}
close FH;