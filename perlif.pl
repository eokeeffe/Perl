#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# using the if statement in perl
###############################
$name=<>;
chomp $name;
if($name eq "evan")
{
	print " Welcome Evan\n";
} 
else
{
	print "Sorry but you ain't the person I'm looking for\n";
}
