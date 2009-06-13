#!/usr/bin/perl

use strict;
use warnings;

use Carp;

my $output=`$^X warning_exists1.pl 2>&1`;
$output=~s/^#.*$//gm;
print $output;
