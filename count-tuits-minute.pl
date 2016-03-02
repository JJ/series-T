#!/usr/bin/env perl

use strict;
use warnings;

use v5.14;

my %twits_at;

while(<>) {
  chomp;
  my ($hour, $minute) = /-(\d+)-(\d+)-\d+\"/;
  my $time = sprintf("%02d%02d",$hour,$minute);
  $twits_at{$time}++;
}

say "minute,tweets";
for my $time ( sort  {$a <=> $b} keys %twits_at ) {
  say "$time,$twits_at{$time}";
}
