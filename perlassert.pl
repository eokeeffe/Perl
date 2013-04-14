#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the assertion to match characters in strings
###############################
$text = "Here is some text";
$text =~ s/\b([A-Za-z]+)\b/There/;
print "$text\n";