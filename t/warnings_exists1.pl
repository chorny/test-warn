#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw(no_plan);
use Test::Warn;


warnings_exists {
  warn "warn_1";
  warn "warn_2";
} [qr/warn_1/];

warnings_exists {
  warn "warn_1";
  warn "warn_2";
} [qr/warn_1/,qr/warn_2/];

warnings_exists {
  warn "warn_2";
} [qr/warn_1/];

warnings_exists {
  my $a;
  $b=$a+1;
  warn "warn_2";
} ['uninitialized'];

warnings_exists {
  warn "warn_2";
} ['uninitialized'];

warnings_exists {
  my $a;
  $b=$a+1;
  warn "warn_2";
} [qr/warn_2/];

