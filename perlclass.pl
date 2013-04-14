#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# Creating a classs here
# then it searches the text for that class
###############################
$text="Here is the Text";
if($text =~ /[aeoiu]/) 
{
print "Yep,we got some vowels here\n";
}