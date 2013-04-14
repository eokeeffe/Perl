#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# this is the split function with
# user input for the file to split
###############################
print "Please enter the file you want to split\n";
$file=<STDIN>;

$text=" ";
open FH ,"<$file";
while($text=<FH>)
{
	@values=split " ",$text; 
	$i=0;
	while($i<@values)
	{
		print "$values[$i]\n";
		$i++;
	}
}
close FH;
