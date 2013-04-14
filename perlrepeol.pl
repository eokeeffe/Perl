#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# replacing the beginning with BOL and end of line with EOL
###############################
$text = "This text has\nmultiple lines";
$text =~ s/^/BOL/g;
$text =~ s/$/EOL/g;
$text =~ s/\n/EOL/g;
$text =~ s/\n/BOL/g;
print "$text\n";