#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# upon entering the string 
# a function splits the string
# then it counts the number of words
# then it will call a subroutine
# that will check that the sentence begins with THE and ends in !
###############################
print("please enter a sentence.\n");
$sentence = <STDIN>;
@words = split(/ /,$sentence); 				#split sentence into a list of words
$num_of_words = @words; 					#count the number of words in the list

print("Your sentence has ", $num_of_words, " words in it.\n");
&begin_end;									#call the begin_end subroutine

print("This is the end of the program.\n");

sub begin_end 								#this is a subroutine
{
if($words[$num_of_words - 1] =~ /!/) #if the last item in the list contains !
{
print("Your sentence ends with !\n");
}
else
{
print("Your sentence does not end with !\n");
}
if(($words[0] eq "the") || ($words[0] eq "The")) #the first item in the list is the
{
print("Your sentence begins with THE.\n");
}
}