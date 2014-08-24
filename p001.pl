#!/usr/bin/env perl

use strict;
use warnings;

my $sum = 0;
for (my $i = 1; $i < 1000; ++$i) {
    $sum += $i if ($i % 3 == 0 || $i % 5 == 0);
}
print $sum, "\n";
