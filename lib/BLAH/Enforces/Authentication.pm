package BLAH::Enforces::Authentication;

# ABSTRACT: BLAH role for enforced authentication

use Moose::Role;
use namespace::autoclean 0.24;

with 'BLAH::Role::Authentication';

=method execute

We wrap the C<execute()> method to invoke C<< $self->authenticated() >> first, in
order to determine if our invocation is considered authenticated by the BLAH.

If C<authenticated()> returns true, we go on our merry way; if false then we
C<confess> our sins.

=cut

before execute => sub {
    my $self = shift @_;

    confess 'Attempt to execute without authentication!'
        unless $self->authenticated;

    return;
};

!!42;
__END__

=head1 DESCRIPTION

A L<BLAH> role for enforcing authentication -- that is, our C<authenticated()>
method returns true.

=head1 SEE ALSO

BLAH
BLAH::Role::Authentication

=cut
