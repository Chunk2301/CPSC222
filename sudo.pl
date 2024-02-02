#!/usr/bin/perl

open my $results, '<', '/var/log/auth.log' or die "Could not open file '/var/log/auth.log' $!";

my $count = 0;
while (my $sess = <$results>){
	$count++ if $sess =~ /pam_unix\(sudo:session\): session opened for user/;
}

print "$count\n";

close $results;

