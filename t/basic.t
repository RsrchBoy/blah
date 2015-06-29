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

validate_class TestClass => (
    isa     => [ 'BLAH'    ],
    methods => [ 'execute' ],
);

done_testing;
