package BLAH::Role::BLAH;

# ABSTRACT: A BLAH "command"

use Moose::Role;
use namespace::autoclean 0.24;

=required_method execute

This is the core of your BLAH.  It should implement your command -- whether
embedded, a simple call/delegation to some other package, or hideously
complex -- in its entirety.

C<execute()> should die on failure, and return otherwise.

=cut

requires 'execute';

!!42;
__END__

=head1 DESCRIPTION

Drink this if you're a BLAH -- that is, you implement a means to call your
application's business logic.

=cut
