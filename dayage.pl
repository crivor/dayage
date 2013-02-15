#!/usr/bin/env perl
#

use strict;
use warnings;
use DateTime;

my $current = time;

# Set Birthday below
my $birth = DateTime->new( 
	year => 1986, 
	month => 1, 
	day => 13, 
	hour => 0, 
	minute => 0, 
	second => 0, 
	nanosecond => 0, 
	);

# Converts birth date to epoch time
my $epoch_birth = $birth->epoch;

# Finds difference between current and birth epoch time
my $epoch_age = $current - $epoch_birth;

# Converts epoch_age to days
my $age_day = ( ( $epoch_age / 60 ) / 60 ) / 24;

print "You are " . int($age_day) . " days old today. " . "\n";
