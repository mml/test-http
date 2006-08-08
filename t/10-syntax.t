use warnings;
use strict;

use Test::HTTP tests => 1;
use Test::HTTP::Syntax;

test_http "mml" {
    >> GET http://lazlo.bloomington.in.us/mml/

    << 200
}
