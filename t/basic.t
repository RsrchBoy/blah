use strict;
use warnings;

use Test::More;
use Test::Moose::More;

{
    package TestBLAH;

    use BLAH;
    sub execute { }
}

subtest 'rudimentary structural test' => sub {
    validate_class BLAH => (
        does    => [ 'MooseX::Traitor' ],
        isa     => [ 'Moose::Object'   ],
        methods => [ 'with_traits'     ],
    );
};

subtest 'rudimentary structural test of a BLAH subclass' => sub {
    validate_class TestBLAH => (
        does    => [ 'MooseX::Traitor', 'BLAH::Role::BLAH' ],
        isa     => [ 'BLAH'                                ],
        methods => [ 'execute'                             ],
    );
};
done_testing;
