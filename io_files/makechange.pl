################################
#	Evan O'Keeffe	20645993
#	Assignement 6:	Winter 2013
#	Part 3
################################

sub quotient
{
	##
	#	Function to get the quotient of a number with a factor
	##
	my $number = shift;
	my $divisor = shift;
	
	my $remainder = $number % $divisor;
	my $quotient = ($number - $remainder) / $divisor;
	
	return $quotient;
}

sysopen(FH,"cents.txt",O_RDONLY) || die "Cannot find cents.txt: $!\n";
open(CV, "+>converted.txt") || die "Cannot create converted.txt: $!\n";
#Q = 25	D = 10	N = 5	P = 1
foreach $total (<FH>)
{
	#remove newline character
	chomp($total);
	$Q = 0,$D = 0,$N = 0,$P = 0;
	$Q = quotient($total,25);
	$D = quotient(($total -($Q*25),10));
	$N = quotient(($total - ($Q*25)-($D*10)),5);
	$P = quotient(($total - ($Q*25)-($D*10)-($N*5)),1);
	print "$total:\tQ:$Q\t D:$D\t N:$N\t P:$P\n";
	print CV "$total:\rQ:$Q\t D:$D\t N:$N\t P:$P\n";
}


#Close the file handle correctly or have the os do it
close(FH) || die "Couldn't close cents.txt properly";
close(CV) || die "Couldn't close converted.txt properly";