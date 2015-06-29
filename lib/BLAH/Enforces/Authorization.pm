package BLAH::Enforces::Authorization;

# ABSTRACT: BLAH role for enforced authentication

use Moose::Role;
use namespace::autoclean 0.24;

with 'BLAH::Role::Authorization';

=method execute

We wrap the C<execute()> method to invoke C<< $self->callable() >> first, in
order to determine if our invocation is considered authorized by the BLAH.

If C<callable()> returns true, we go on our merry way; if false then we
C<confess> our sins.

=cut

before execute => sub {
    my $self = shift @_;

    confess 'Attempt to execute without authorization!'
        unless $self->callable;

    return;
};

!!42;
__END__

=head1 DESCRIPTION

A L<BLAH> role for enforcing authorization -- that is, our C<callable()>
method returns true.

=head1 SEE ALSO

BLAH
BLAH::Role::Authorization

=cut
