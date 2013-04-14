#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# creates a file with the users inputs in it
###############################
print "Please enter the name of the file you wish to open\n";
$name=<STDIN>;
print "Please enter you text here\n";
$writetofile=<STDIN>;
open FH,">$name";

print FH "$writetofile\n";
close FH;
print "Thank you , your file has now been written\n";