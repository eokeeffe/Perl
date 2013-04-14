#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# finding the Nth match
###############################
$text = "Name: Ann Name: John Name: Tom Name: Tim";
$match = 0;
while ($text =~ /Name: (\w+)/g)
{
$match++;
print "Match $match\t$1\n";
}