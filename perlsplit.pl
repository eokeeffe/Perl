#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the split operation
###############################
$text="1034,243526,5363747,46748";
@values=split ",",$text; 
$i=0;
$sum=0;
while($i<@values)
{
	$sum=$sum+$values[$i];
	print "$sum\n";
	$i++;
}