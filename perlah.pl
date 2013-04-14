#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# accesing Hash elements thne printing them
###############################

%h=("k1"=>1,
"k2"=>2,
"k3"=>3
);

foreach $key(keys %h)
{
	print "$h{$key}\n";
}