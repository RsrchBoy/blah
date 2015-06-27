use strict;
use warnings;

use Test::More;
use Test::Moose::More 0.029;

use BLAH::Role::BLAH;

validate_role 'BLAH::Role::BLAH' => (
    required_methods => [ 'execute' ],
);

done_testing;
