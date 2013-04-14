###############################
# Evan O'Keeffe 10324289
# this is my perl script to copy a 
# a file that the user inputs
# to another one and takes the arguements from the cmd
###############################

print "Please enter the name of the file you wish to copy\n";
$input=<STDIN>;
open FH,"<$input";

print "Please enter the name you want for the files copy\n";
$copy=<STDIN>;
open FH1,">$copy";
$line="";
while($line=<FH>)
{
	print FH1 <FH>;
}
close FH;
close FH1;

