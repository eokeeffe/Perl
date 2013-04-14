#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the RE pattern match 
###############################
$text = "Perl is the best Subject";
$text =~ /\b([A-Za-z]+)\b/;
print "$1\n";