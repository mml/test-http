use warnings;
use strict;

use Test::HTTP '-syntax', tests => 1;
use Test::More;

TODO: {
    local $TODO = 'testing TODO mechanism';

    test_http "mml" {
        >> GET http://lazlo.bloomington.in.us/mml/

        << 302
    }
}
