#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the quatifiers
# matching words of 4 or more characters
###############################
$text = "This is some text with long and short words";
@a = ($text =~ m/\w{4,}/gi);
print join " ", @a;
print "\n";