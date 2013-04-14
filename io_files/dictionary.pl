################################
#	Evan O'Keeffe	20645993
#	Assignement 6:	Winter 2013
#	Part 1
################################

#get the file handle from the system in an ordered way
#
sysopen(FH,"words.txt",O_RDONLY) || die "Cannot find words.txt: $!\n";

for (<FH>)
{	
	#\w is any character
	#* is any number of characters
	#? is optional
	#+ is at least one instance
	if(m/([A-Za-z]*)?a+([A-Za-z]*)?e+([A-Za-z]*)?i+([A-Za-z]*)?o+([A-Za-z]*)?u+/i)
	{
		print $_;
	}
}

#Close the file handle correctly or have the os do it
close(FH) || die "Couldn't close file properly";
