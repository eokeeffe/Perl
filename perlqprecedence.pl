#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# learning about the quatifier precedence here
###############################
$text = "That is some text isn’t it";
$text =~ s/.*is/That’s/;
print "$text\n";

print" then to fix this we add *? in the modifier line \n";
$text = "That is some text isn’t it";
$text =~ s/.*?is/That’s/;
print "$text\n";