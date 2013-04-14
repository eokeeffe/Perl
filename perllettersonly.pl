#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# just show if the string is all letters in this case
###############################
$text = "aBc";
if ($text =~ /^\w+$/) { print "Only word characters found\n"; }
if ($text =~ /^[A-Za-z]+$/) { print "Only Letters Found\n"; }