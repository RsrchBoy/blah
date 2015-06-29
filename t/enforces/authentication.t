use strict;
use warnings;

use Test::More;
use Test::Moose::More 0.030;

use aliased 'BLAH::Enforces::Authentication' => 'ROLE';

validate_role ROLE() => (
    does => [ 'BLAH::Role::Authentication' ],
);

# not yet integrated into validate_role in 0.030
role_wraps_before_method_ok ROLE() => 'execute';

# FIXME NEED A REAL TEST HERE...

done_testing;
