#!/usr/bin/perl

use strict;
use warnings;

use Test::More qw(no_plan);
use lib '.';
use Test::Warn;

warning_exists {
  warn "warn_1";
  warn "warn_2";
} [qr/warn_1/];

warning_exists {
  warn "warn_1";
  warn "warn_2";
} [qr/warn_1/,qr/warn_2/];

warning_exists {
  warn "warn_2";
} [qr/warn_1/];
