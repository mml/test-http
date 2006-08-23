use warnings;
use strict;

use Test::HTTP '-syntax', tests => 1;

test_http "mml" {
    >> GET http://lazlo.bloomington.in.us/mml/

    << 200
}
