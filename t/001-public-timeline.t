use strict;
use warnings;

use Test::More tests=>1;

diag(`pwd`);
my $home = $ENV{HOME} || (getpwuid($<))[7];
my $timestamp = "$home/.blt_last_fetch_public";
unlink($timestamp) if -e $timestamp;

my $count_of_updates = 0;

open BLT, "bin/blt -c -P -S|" or die "Can't open blt: $!";
while (<BLT>) {
    $count_of_updates++ if /^<\S+>/;
    chomp;
    diag($_);
}

close BLT or die "Can't close blt: $!";

is($count_of_updates, 20);

