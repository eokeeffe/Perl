@list = (("list",("within")),"a","list");
foreach (@list)
{
	push(@answers,$_);
}

foreach (@answers)
{
	print "$_\n";
}