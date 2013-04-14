#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# prints all the elements of the hash
# then it matches one of the characters at the end of line 
###############################
$text = "Matching meta-characterers.";
if ($text =~ m/\.$/) {
print "Full-stop found\n";
} else {
print "No full-stop\n";
}