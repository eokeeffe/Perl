#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# printing values from an array
###############################

@values=(1,2,3,4,5);
$i=0;
while($i<$#values+1)
{
	print "$values[$i]\n";
	$i++;
}