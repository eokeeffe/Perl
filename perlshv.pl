#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# Summing Hash Values
###############################
%values = (k1=>1,k2=>2,k3=>3,k4=>4);
$total = &sumHash(\%values);
print "Total:$total\n";

sub sumHash
{
	$href = shift;
	$sum =0;
	
	foreach $key (keys %$href)
	{
		$sum=$sum+$$href{$key};
	}
	return $sum
}