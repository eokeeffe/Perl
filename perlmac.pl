#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# matching any character in perl then replacing them with the *
#the . is the character for replacing the characters 
###############################
$text = "Matching any character.";
$text =~ s/./*/g;
print "$text\n";