package BLAH::Types;

# ABSTRACT: A library of BLAH types

use MooseX::Types -declare => [ qw{ BLAHObject } ];

#use MooseX::Types::LoadableClass
#use MooseX::Types::Moose 'Object';

subtype BLAHObject,
    as 'Object',
    where { $_->isa('BLAH') },
;



!!42;
__END__
