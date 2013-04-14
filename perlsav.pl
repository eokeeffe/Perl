#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# Summing Array Values
###############################
@values = (1,2,3,4);
$total = &sumArray(\@values);
print "Total: $total\n";

sub sumArray
{
	$aref=shift;
	$i=0;
	$sum=0;
	while($i<@$aref)
	{
		$sum=$sum+$$aref[$i];
		$i++;
	}
	return $sum;
}