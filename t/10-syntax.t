use warnings;
use strict;

use Test::HTTP '-syntax', tests => 2;

test_http "mml" {
    >> GET http://lazlo.bloomington.in.us/mml/

    << 200
}

# Method in a variable should be OK, too.

test_http "method in variable" {
    my $method = 'GET';

    >> $method http://lazlo.bloomington.in.us/mml/

    << 200
}
