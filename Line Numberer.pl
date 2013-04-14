#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# Opens all files with 
# the extension in the directory 
# and adds numbers to left hand column
# created 02/06/2011
###############################

print "\n\n";
print "This script will take any document and add numbers to the left side\r\n";
print "each file will be output as the original name + line_numbers.txt\r\n";

print "Please enter the file extension in .file_extension format\r\n";
print "example would be .c for C files, .pl for Perl files\r\n\n";
$extension=<STDIN>;
print "is "."$extension"."what your definetly looking for?\r\n";
print "1 to continue and 0 to end script\r\n";
$positive=<STDIN>;
print"\n\n\n";

if($positive==1)
{
	@files = <*$extension>;				#search only files with this extension in current directory	
	undef($open="");
	foreach $open(@files) 
	{  
	   $count=0;
	   #read in file into array
	   open FH,"< $open";	#open the document to read
	   open FH2,"> $open.line_numbers.txt";	#create a duplicate with numbered lines
	   do
	   {
			while($line=<FH>)
			{
				if($count<=9) {print FH2 "$count." . "  ".$line;$count++;}
				if($count>=10){print FH2 "$count." . " " .$line;$count++;}
			}
	   }
	   while(<FH>);
	   close FH;
	   close FH2;
	} 
	print "All files of extension"."$extension"."are now numbered\r\n";
	print "Thank you for using my script :-)\r\n";
}
else
{
	die "Ending script\r\n";
}