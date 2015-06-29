use strict;
use warnings;

use Test::More;
use Test::Moose::More;

{
    package TestClass;

    use Moose;
    extends 'BLAH';

    sub execute { }
}

subtest 'rudimentary structural test' => sub {
    validate_class TestClass => (
        does    => [ 'MooseX::Traitor' ],
        isa     => [ 'BLAH'            ],
        methods => [ 'execute'         ],
    );
};

done_testing;
