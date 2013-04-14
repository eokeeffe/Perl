#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# accesing Hash elements
###############################

@values=(1,2,3,4,5);
$i=0;
$sum=0;
while($i<@values)
{
	$sum=$sum+$values[$i];
	$i++;
}
print "$sum\n";