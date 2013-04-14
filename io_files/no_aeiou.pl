################################
#	Evan O'Keeffe	20645993
#	Assignement 6:	Winter 2013
#	Part 2
################################

#create a hash table to contain the key(letters) and value(non occurences)
%missingletters = ('a',0,'e',0,'i',0,'o',0,'u',0);

sysopen(FH,"words.txt",O_RDONLY) || die "Cannot find words.txt: $!\n";

for (<FH>)
{
	# if the index is -1 then there is no letter in the string
	$_ = lc($_);#make sure all characters are lowercase
	if(index($_,'a') == -1){$var = $missingletters{'a'}; $missingletters{'a'}=++$var;}
	if(index($_,'e') == -1){$var = $missingletters{'e'}; $missingletters{'e'}=++$var;}
	if(index($_,'i') == -1){$var = $missingletters{'i'}; $missingletters{'i'}=++$var;}
	if(index($_,'o') == -1){$var = $missingletters{'o'}; $missingletters{'o'}=++$var;}
	if(index($_,'u') == -1){$var = $missingletters{'u'}; $missingletters{'u'}=++$var;}
}
#sort the values of the hash table and print them
foreach $value (reverse (sort {$missingletters{$a} cmp $missingletters{$b} } keys %missingletters))
{
	print "$missingletters{$value} words do not have a '$value' \n";
}

#Close the file handle correctly or have the os do it
close(FH) || die "Couldn't close file properly";