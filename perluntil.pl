#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the until statement and also for the first time chop
###############################
print "What is 17 plus 26?\n";
$correctanswer=43;
$input_answer=<STDIN>;
chop($input_answer);
until($input_answer==$correctanswer)
{
	print "Wrong, please keep trying again\n";
	$input_answer=<STDIN>;
	chop($input_answer);
}
print "congratulations, You got it :)\n";