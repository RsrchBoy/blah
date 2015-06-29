use strict;
use warnings;

use Test::More;
use Test::Moose::More;

use BLAH::Role::Authentication;

validate_role 'BLAH::Role::Authentication' => (
    required_methods => [ 'authenticated' ],
);

done_testing;
