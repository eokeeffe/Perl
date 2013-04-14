#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the quatifiers
# extracting titles from a html page
###############################
$text = "<TITLE>Fergus’ Homepage</TITLE>";
$text =~ m/<TITLE>(.*)<\/TITLE>/i;
print "$1\n";