#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
#  prototype for taking cmd arguements 
###############################
$numArgs = $#ARGV + 1;
print "thanks, you gave me $numArgs command-line arguments:\n";

foreach $argnum (0 .. $#ARGV) {

   print "$ARGV[$argnum]\n";

}
