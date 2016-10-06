#!/usr/bin/perl -Iblib/lib -Iblib/arch -I../blib/lib -I../blib/arch
# 
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl sequence.t'

# Test file created outside of h2xs framework.
# Run this like so: `perl sequence.t'
#    <apallatto@actualeyes>     2016/10/06 17:11:18

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More qw( no_plan );
BEGIN { use_ok( String::Sequence ); }


#########################

# Insert your test code below, the Test::More module is used here so read
# its man page ( perldoc Test::More ) for help writing this test script.

my $seq_obj = String::Sequence->new();

$got_lenght_2_sequence = $seq_obj->listSubstrings({
    string => "ChickenSoup",
    length => 2
});

$expected_length_2_sequence = [
    'Ch', 'hi', 'ic', 'ck', 'ke', 'en', 'nS', 'So', 'ou', 'up'
];

is_deeply( $got_lenght_2_sequence, $expected_length_2_sequence,
    "listSubstrings - 2 Char Sequence" );



$got_length_4_sequence = $seq_obj->listSubstrings({
    string => "ChickenSoup",
    length => 4
});


$expected_length_4_sequence = [
    'Chic', 'hick', 'icke', 'cken', 'kenS', 'enSo', 'nSou', 'Soup'
];


is_deeply( $got_length_4_sequence, $expected_length_4_sequence,
    "listSubstrings - 4 Char Sequence" );

