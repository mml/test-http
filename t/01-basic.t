use warnings;
use strict;

use Test::HTTP tests => 2;

{
    my $test = Test::HTTP->new('GET lazlo');

    $test->get('http://lazlo.bloomington.in.us/mml/');
    $test->status_code_is(200);
}

{
    my $test = Test::HTTP->new('GET utf8-crap');
    my $uri = 'http://a9.com/ Και';
    $test->get($uri);
    $test->status_code_is(200);
}
