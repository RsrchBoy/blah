package BLAH::Role::Authentication;

# ABSTRACT: BLAH base authentication role

use Moose::Role;
use namespace::autoclean 0.24;

=required_method authenticated

Returns true if authentication has been performed successfully; false if not.

What this means, exactly, is left to the implementer -- or more likely to more
concrete authentication roles.

=cut

requires 'authenticated';

!!42;
__END__

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 SEE ALSO

BLAH

=cut
