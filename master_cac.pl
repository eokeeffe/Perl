#!/usr/bin/perl -w
############################################
#	Perl script to compile programs for me 
#	This will compile any .c program file using 
#   Gcc , the scripts will be made into executable files
#   
#   Future script will be able to compile some other files too
#	
#	Evan O'Keeffe
#	10324289
#	Date:29/06/2011
############################################

print "\n\n";
print "Master Auto Compiling Script \r\n";
print "Will activate all the cac.pl scripts in all directories\r\n";
print "Make sure your computer has enough space for this before initiating \r\n";
print "\r\n 1 to continue or anything else to abort \r\n";

$positive=<STDIN>;
#$positive=1;

if($positive==1)
{
	use File::Find qw(find);
	#my $dir = 'C:\Users\evan\Desktop\joes programming practicals\Questions + Solutions';
	my $dir = 'Questions+Solutions';
	
	my $pattern = 'cac.pl';

	$completed="Questions+Solutions/Compilation_error_log+location.txt";
	
	open STDOUT,">",$completed|| die "Cannot open the directory logging file \r\n";
	
	$unix_kernel_info="uname -a";
	$get_microsoft_information="systeminfo";
	$get_unix_information="cat /proc/version";
	
	system($unix_kernel_info);	# get the unix kernel information
	system($get_unix_information);	# get the unix system information
	system($get_microsoft_information);	# get all microsoft machine information
	
	close(STDOUT);
	
	open STDERR, ">>", $completed || die "Cannot open the directory logging file \r\n";
	
	sub run_scripts
	{
		#print $File::Find::name."\r\n" ;
		#print STDERR "$File::Find::name \r\n" ;
		system("perl cac.pl");
	}

	find sub 
	{
		run_scripts
		
		if /$pattern/;
		
	}, $dir;
	
	close(STDERR);#release the error stream and close the file
}
else
{
	die "Ending Master Compiler script \r\n";
}