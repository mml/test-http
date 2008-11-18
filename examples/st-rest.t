use Test::HTTP '-syntax', tests => 3;

# This test runs against the Socialtext REST API, which is generally subject to
# change, but see docs at
#
# http://www.socialtext.net/st-rest-docs

test_http 'Socialtext REST echo' {
    >> GET http://www.socialtext.net/data/echo/foo
    >> Accept: text/html

    << 200
    ~< Content-type: ^text/html\b
    <<
    ~< foo
}
