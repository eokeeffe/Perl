#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# this is my perl script to copy a 
# a file that the user inputs
# to another one and takes the arguements from the cmd
###############################
print "Please enter the file you wish to copy\n";
$input=<STDIN>;
open FH,"<$input";

# check to see if file exists
#if (-e "<FH>"){ print "The file actually exists! \n";}
#else{die "either the file doesn't exist or you entered the wrong name\n";} 

print "Please enter the name you wish to give the copy\n";
$copy=<STDIN>;

open FH1,">$copy";
$file=" ";
while($file= <FH>)
{
   print FH1 $file . "";
} 
close FH;
close FH1;
#if (-e "$input"){ print "The file has been copied \n";}
