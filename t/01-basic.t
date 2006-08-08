use warnings;
use strict;

use Test::HTTP tests => 1;

{
    my $test = Test::HTTP->new('GET google');

    $test->get('http://lazlo.bloomington.in.us/mml/');
    $test->status_code_is(200);
}
