#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# finding multiple matches
###############################
$text = "Here is the texxxt";
while ($text =~ m/x/g) {
print "Found another x\n";
}