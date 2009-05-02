#!/usr/bin/perl

use strict;
use warnings;

use StupidMarkov;

my $mm = StupidMarkov->new();

while (my $line = <>) {
    chomp($line);
    next if (!defined($line));

    foreach my $word (split(/ /, $line)) {
        $mm->addItem($word);
    }
}


print $mm->getNextItem(), " " for (0 .. $mm->getItemCount());
