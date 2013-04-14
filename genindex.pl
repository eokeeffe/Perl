#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# This is my glob script
# what it does is take the list of 
# files that have the prefix that the user defines
###############################
print "please enter the name of your Index\n";
$name=<STDIN>;
print "Please enter the file extension in .file format\n";
print "if you want all files just press enter\n";
$prefix=<STDIN>;
open FH,">$name";

# check to see if file exists
if (-e "$name"){ print "The file actually exists! \n";} 
else{print "That file does not exist in the current directory \n";} 

@files = <*$prefix>;#search only files with this prefix
 foreach $file (@files) 
 {
   print FH $file . "\n";
   print $file . "\n";
 } 
close FH;
print "Thank you , your file has now been written\n";