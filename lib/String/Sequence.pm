use strict;
use warnings;
package String::Sequence;

# ABSTRACT: Sequences characters in strings

sub new {
    my ($class, %args) = @_;
    return bless \%args, $class;
};

=method listSubstrings


This method takes a string and an integer and returns a list of
substrings the length of the integer

=cut


sub listSubstrings {
    my ($self, $args) = @_;
    
    my $string = $args->{string};
    my $stringLength = length($string);
    my $substringLength = $args->{length};
    my $substringCount = ($stringLength - $substringLength);

    my @substrings;

    foreach my $position (0..$substringCount) {
        push @substrings, substr($string, $position, $substringLength)
    }

    return \@substrings;
}



1;
