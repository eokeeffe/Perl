#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# Creating a classs here
# then it searches the text forthings other than that class
###############################
$text = "Here is the text\n";
if ($text =~ /[^ab]/) {
print "There are characters other than a or b\n";
}