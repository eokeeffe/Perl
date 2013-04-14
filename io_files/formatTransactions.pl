################################
#	Evan O'Keeffe	20645993
#	Assignement 6:	Winter 2013
#	Part 4
################################

sub getName
{
	########################################################
	#Takes the string and return the uppercase first letter
	#for the first and last name
	########################################################
	my $string = shift;
	my $fn,$ln;
	
	if(index($string,' ') != -1)
	{
		@clientName = split(' ',$string);
		$fn = ucfirst($clientName[0]);
		$ln = ucfirst($clientName[1]);
	}
	else
	{	
		$fn = "";
		$count=0;
		while ($count < length($string))
		{
			if(((split //, $string)[$count] =~ m/[A-Z]/) && $count > 2){last;}
			$fn = $fn.(split //, $string)[$count];
			$count++;
		}
		$ln = ucfirst(substr ($string,$count));
		$fn = ucfirst($fn);
	}
	return ($fn,$ln);
}

sub allowableDate
{
	#check to see if the date input is correct or not
	#return true if the date is correct
	#return false if the date is not correct
	@days=(31,28,31,30,31,30,31,31,30,31,30,31);
	
	$date_string = shift;
	@date = split(/\s+/,$date_string);
	
	#month / day / year
	#print "$date[0] , $date[1] , $date[2] \n";
	
	if($date[0] > 0 && $date[0] < 13)
	{	
		if($date[1] <= $days[$date[0]])
		{
			#print length($date[2]),"\n";
			
			if(length($date[2]) == 2)
			{
				if($date[2] >= 0)
				{
					return 0;
				}
			}
			elsif(length($date[2]) == 4)
			{
				if($date[2] >= 2000)
				{
					return 0;
				}
			}
		}
		elsif($date[2] % 4 == 0)
		{
			if($date[0] == 2)
			{
				if($date[1] <= 29)
				{
					if(length($date[2]) == 2)
					{
						if($date[2] >= 00)
						{
							return 0;
						}
					}
					elsif(length($date[2]) == 4)
					{
						if($date[2] >= 2000)
						{
							return 0;
						}
					}
				}
			}
		}
	}

	return 1;
}

sub getDate
{
	#All cases
	#braced,dashed,spaced
	#else grouped , can be cased by length
	#1 1 2,length = 4
	#1 2 2,length = 5
	#2 1 2,length = 5
	#1 1 4,length = 6
	#2 2 2,length = 6
	#1 2 4,length = 7
	#2 1 4,length = 7
	#2 2 4,length = 8
	
	my $string = shift;
	
	#full form pattern
	if($string =~ m/\d{1,2}[\/\-\s]?\d{1,2}[\/\-\s]?\d{2,4}/ || $string =~ m/\d[\/\-\s]?\d[\/\-\s]?\d/)
	{	
		#has braces
		if($string =~ m/\d{1,2}\/+\d{1,2}\/+\d{1,4}/)
		{
			#print "Braced $string\n";
			@date = split(m/\/+/,$string);
		}
		#has dashes
		elsif($string =~ m/\d{1,2}\-+\d{1,2}\-+\d{2,4}/)
		{
			#print "Dashed $string\n";
			@date = split(m/\-+/,$string);
		}
		#has spaces
		elsif($string =~ m/\d{1,2}\s+\d{1,2}\s+\d{2,4}/)
		{
			#print "Spaced $string\n";
			@date = split(m/\s+/g,$string);
		}
		else
		{
			#digits are all together but of the form required
			#tricky part here is getting the numbers correctly
			
			#remove whitespace for the length
			$string =~ s/\s+//g;
			#print "$string length =",length($string),"\n";
			
			if(length($string) == 4)
			{
				#case 1 1 2
				$d = "";
				$count=0;
				while ($count < length($string))
				{
					if($count==1||$count==2){$d = $d.' ';}
					$d = $d.(split //, $string)[$count];
					$count++;
				}
				#print "4:	$d\n";
				@date = split(/\s+/,$d);
			}
			if(length($string) == 5)
			{
				#case 1 2 2
				#case 2 1 2
				$d = "";
				$count=0;
				while ($count < length($string))
				{
					if($count==1||$count==3){$d = $d.' ';}
					$d = $d.(split //, $string)[$count];
					$count++;
				}
				
				#check if correct
				if(allowableDate($d))
				{
					$d = "";
					$count=0;
					while ($count < length($string))
					{
						if($count==2||$count==3){$d = $d.' ';}
						$d = $d.(split //, $string)[$count];
						$count++;
					}
				}
				#print "5:	$d\n";
				@date = split(/\s+/,$d);
			}
			elsif(length($string) == 6)
			{
				#case 1 1 4
				#case 2 2 2
				$d = "";
				$count=0;
				while ($count < length($string))
				{
					if($count==1||$count==2){$d = $d.' ';}
					$d = $d.(split //, $string)[$count];
					$count++;
				}
				#check if correct
				if(allowableDate($d))
				{
					$d = "";
					$count=0;
					while ($count < length($string))
					{
						if($count==2||$count==4){$d = $d.' ';}
						$d = $d.(split //, $string)[$count];
						$count++;
					}
				}
				#print "6:	$d\n";
				@date = split(/\s+/,$d);
			}
			elsif(length($string) == 7)
			{
				#case 1 2 4
				#case 2 1 4
				$d = "";
				$count=0;
				while ($count < length($string))
				{
					if($count==1||$count==3){$d = $d.' ';}
					$d = $d.(split //, $string)[$count];
					$count++;
				}
				#check if correct
				if(allowableDate($d))
				{
					$d = "";
					$count=0;
					while ($count < length($string))
					{
						if($count==2||$count==3){$d = $d.' ';}
						$d = $d.(split //, $string)[$count];
						$count++;
					}
				}
				#print "7:	$d\n";
				@date = split(/\s+/,$d);
			}
			elsif(length($string) == 8)
			{
				#length = 8
				#case 2 2 4
				$d = "";
				$count=0;
				while ($count < length($string))
				{
					if($count==2||$count==4){$d = $d.' ';}
					$d = $d.(split //, $string)[$count];
					$count++;
				}
				#print "8:	$d\n";
				@date = split(/\s+/,$d);
			}
		}
		
		#check to make sure day/month are 2 digit and year is 4 digit
		if(length $date[0] < 2)
		{$date[0] = "0".$date[0];}
		if(length $date[1] < 2)
		{$date[1] = "0".$date[1];}
		if(length $date[2] < 4)
		{$date[2] = "20".$date[2];}
		
		$day = $date[0];
		$month = $date[1];
		$year = $date[2];
		
		return ($day,$month,$year);
	}
	else
	{
		print STDERR "Failed:$string\n";
		print STDERR "length=",length($string),"\n";
		return ("","","");
	}
}

sub getTransaction
{
	########################################################
	#Takes the string and returns the transaction amount
	#	format = $dollars.cent
	#	default for cent is 00
	########################################################
	
	my $string = shift;
	
	if(index($string,'.') != -1)
	{
		return  "\$$string";
	}
	else
	{
		#$1.00
		return  "\$$string".".00";
	}
}

sub getCashCredit
{
	########################################################
	#Takes the string and returns whether they used cash
	#or a credit card
	#	If a card then check for 
	#	1.Visa:start with 4 , 16 digits , groups of 4 sep = ' ' or '-'
	#	2.Mastercard start with numbers 51-55,16digits , groups of 4 seperator = ' ' or '-'
	#	3.AE	start with 34 or 37 15 digits groups <4>,<6>,<5> , seperator = ' ' or '-'
	########################################################
	
	my $string = shift;
	my $number = $string;
	
	#remove whitespace
	$number =~ s/\s+//g;
	#remove dashes
	$number =~ s/\-+//g;
	
	#Visa
	if($number =~ m/^4+\d{15}/)
	{
		$group = "Visa:";
		$count=0;
		while ($count < length($number))
		{
			if($count==4||$count==8||$count==12){$group = $group.'-';}
			$group = $group.(split //, $number)[$count];#split the number into each digit and append to the string
			$count++;
		}
		return $group;
	}
	
	#Mastercard
	if($number =~ m/^5[1-5]+\d{14}/)
	{	
		$group = "MC:";
		$count=0;
		while ($count < length($number))
		{
			if($count==4||$count==8||$count==12){$group = $group.'-';}
			$group = $group.(split //, $number)[$count];
			$count++;
		}
		return $group;
	}
	
	#America Express
	if($number =~ m/^3[4|7]+\d{13}/)
	{	
		$group = "AmEx:";
		$count=0;
		while ($count < length($number))
		{
			if($count==4||$count==10||$count==15){$group = $group.'-';}
			$group = $group.(split //, $number)[$count];
			$count++;
		}
		
		return $group;
	}
	
	#If nothing else return the default value
	return "Cash";
}

sub main
{
	#main part of the program
	sysopen(FH,"transactions.txt",O_RDONLY) || die "Cannot find transactions.txt: $!\n";
	open(FT,"+>formatted.txt") || die "Cannot create formatted.txt: $!\n";
	#read in the file
	@lines = <FH>;

	foreach (@lines)
	{
		@string = split(/;/,$_);
		
		#extract the first and last names
		($fn,$ln) = getName($string[0]);
		#get the date
		($day,$month,$year) = getDate($string[1]);
		#get the amount of cash
		$amount = getTransaction($string[2]);
		#get the cash
		$cashCredit = getCashCredit($string[3]);
		#print $fn," ",$ln,"\n";
		#print "$day\t$month\t$year\n";
		#print "$amount"."\n";
		#print "$cashCredit"."\n";
		print FT "$fn $ln;$day/$month/$year;$amount;$cashCredit\n";
	}

	close(FH) || die "Couldn't close customer.txt properly";
	close(FT) || die "Couldn't close formatted.txt properly";
}

sub testDates
{
	#Test the date function with the cases allowed
	@testcases = ("03/17/2005","3/17/2005","03/7/2005","03/17/05","3/17/05","03/7/05",
	"03-17-2005","3-17-2005","03-7-2005","03-17-05","3-17-05","03-7-05",
	"03 17 2005","3 17 2005","03 7 2005","03 17 05","3 17 05","03 7 05",
	"03172005","3172005","372005","0372005","3705","031705","31705","03705");
	
	$counter = 0;
	$testing = 1;
	@numbers = ();
	foreach $date (@testcases)
	{
		($month,$day,$year) = getDate($date);
		if($month=="" or $day=="" or $year=="")
		{
			$testing = 0;
			push(@numbers,$counter);
		}
		$counter++;
	}
	
	if($#numbers > 0 )
	{
		print "$#numbers test case/s failed";
		foreach $value (@numbers)
		{
			print "$numbers[$value]\n";
		}
	}
	else
	{
		print "All cases passed\n";
	}
}

main();