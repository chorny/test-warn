#!/usr/bin/perl

use strict;
use warnings;

use Carp;
use Test::More qw(no_plan);

my $file="t/warning_exists1.pl";
my $output=`$^X -Mblib $file 2>&1`;
$output=~s/^#.*$//gm;
$output=~s/\n{2,}/\n/gs;
#print $output;
is($output,<<"EOT");
warn_2 at $file line 12.
ok 1
ok 2
warn_2 at $file line 21.
not ok 3
warn_2 at $file line 27.
ok 4
warn_2 at $file line 31.
not ok 5
Use of uninitialized value in addition (+) at $file line 36.
ok 6
1..6
EOT
