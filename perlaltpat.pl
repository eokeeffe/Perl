#!/usr/bin/perl -w
###############################
# Evan O'Keeffe 10324289
# alternative pattern matching
# it will only accpet the users input and not the other line
###############################
while ($input = <>) {
if ($input =~ m/^(exit|stop|quit)$/i) {
exit;
}
}