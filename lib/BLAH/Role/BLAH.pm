package BLAH::Role::BLAH;

# ABSTRACT: A BLAH "command"

use Moose::Role;
use namespace::autoclean 0.24;

=required_method execute

This is the core of your BLAH.  It should implement your command -- whether
embedded, a simple call/delegation to some other package, or hideously
complex -- in its entirety.

C<execute()> should die on failure, and return otherwise.

=required_method name

The "name" of this BLAH.  BLAH implementers are left to define this on their own,
but it is anticipated that the name here will be something like the package name with
a namespace prefix removed; e.g. if your BLAH namespace is "Organic::Produce::BLAH"
and the BLAH package is "Organic::Produce::BLAH::Relabel::Pesticides", then the BLAH name would be
-- surprise! -- "Relabel::Pesticides".

=cut

requires 'execute';
requires 'name';

!!42;
__END__

=head1 DESCRIPTION

Drink this if you're a BLAH -- that is, you implement a means to call your
application's business logic.

=cut
