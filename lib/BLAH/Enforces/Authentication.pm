#
# This file is part of BLAH
#
# This software is Copyright (c) 2015 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package BLAH::Enforces::Authentication;
our $AUTHORITY = 'cpan:RSRCHBOY';
$BLAH::Enforces::Authentication::VERSION = '0.001'; # TRIAL
# ABSTRACT: BLAH role for enforced authentication

use Moose::Role;
use namespace::autoclean 0.24;

with 'BLAH::Role::Authentication';


before execute => sub {
    my $self = shift @_;

    confess 'Attempt to execute without authentication!'
        unless $self->authenticated;

    return;
};

!!42;

__END__

=pod

=encoding UTF-8

=for :stopwords Chris Weyl

=for :stopwords Wishlist flattr flattr'ed gittip gittip'ed

=head1 NAME

BLAH::Enforces::Authentication - BLAH role for enforced authentication

=head1 VERSION

This document describes version 0.001 of BLAH::Enforces::Authentication - released August 26, 2015 as part of BLAH.

=head1 DESCRIPTION

A L<BLAH> role for enforcing authentication -- that is, our C<authenticated()>
method returns true.

=head1 METHODS

=head2 execute

We wrap the C<execute()> method to invoke C<< $self->authenticated() >> first, in
order to determine if our invocation is considered authenticated by the BLAH.

If C<authenticated()> returns true, we go on our merry way; if false then we
C<confess> our sins.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<BLAH|BLAH>

=item *

L<BLAH|BLAH>

=item *

L<BLAH::Role::Authentication|BLAH::Role::Authentication>

=back

=head1 BUGS

Please report any bugs or feature requests on the bugtracker website
https://github.com/RsrchBoy/blah/issues

When submitting a bug or request, please include a test-file or a
patch to an existing test-file that illustrates the bug or desired
feature.

=head1 AUTHOR

Chris Weyl <cweyl@alumni.drew.edu>

=head2 I'm a material boy in a material world

=begin html

<a href="https://gratipay.com/RsrchBoy/"><img src="http://img.shields.io/gratipay/RsrchBoy.svg" /></a>
<a href="http://bit.ly/rsrchboys-wishlist"><img src="http://wps.io/wp-content/uploads/2014/05/amazon_wishlist.resized.png" /></a>
<a href="https://flattr.com/submit/auto?user_id=RsrchBoy&url=https%3A%2F%2Fgithub.com%2FRsrchBoy%2Fblah&title=RsrchBoy's%20CPAN%20BLAH&tags=%22RsrchBoy's%20BLAH%20in%20the%20CPAN%22"><img src="http://api.flattr.com/button/flattr-badge-large.png" /></a>

=end html

Please note B<I do not expect to be gittip'ed or flattr'ed for this work>,
rather B<it is simply a very pleasant surprise>. I largely create and release
works like this because I need them or I find it enjoyable; however, don't let
that stop you if you feel like it ;)

L<Flattr|https://flattr.com/submit/auto?user_id=RsrchBoy&url=https%3A%2F%2Fgithub.com%2FRsrchBoy%2Fblah&title=RsrchBoy's%20CPAN%20BLAH&tags=%22RsrchBoy's%20BLAH%20in%20the%20CPAN%22>,
L<Gratipay|https://gratipay.com/RsrchBoy/>, or indulge my
L<Amazon Wishlist|http://bit.ly/rsrchboys-wishlist>...  If and *only* if you so desire.

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2015 by Chris Weyl.

This is free software, licensed under:

  The GNU Lesser General Public License, Version 2.1, February 1999

=cut
