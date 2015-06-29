use strict;
use warnings;

use Test::More;
use Test::Moose::More;

use BLAH::Role::Authorization;

validate_role 'BLAH::Role::Authorization' => (
    required_methods => [ 'callable' ],
);


done_testing;
