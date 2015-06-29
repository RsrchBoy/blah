package BLAH::Role::Authorization;

# ABSTRACT: BLAH base authorization role

use Moose::Role;
use namespace::autoclean 0.24;

=required_method callable

A BLAH authenticator role must implement the callable method.

Returns true if the authorizing authority determines that the BLAH (that is,
C<execute()>) may be called.

("Called by what" is left as an exercise for the implementer.)

=cut

requires 'callable';

!!42;
__END__

=head1 SYNOPSIS

=head1 DESCRIPTION

A BLAH class exhibits this trait to indicate that it can tell you if it
believes you should be able to invoke it -- that is, if you are authorized to
call the C<execute()> method.

=head1 SEE ALSO

BLAH

=cut
