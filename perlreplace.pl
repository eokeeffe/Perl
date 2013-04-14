#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the quatifiers
# replacing multiple e's with a single e
###############################
$text = "Hello from Peeeeeerl";
$text = s/e+/e/g;
print " $text\n ";