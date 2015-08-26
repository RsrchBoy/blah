#
# This file is part of BLAH
#
# This software is Copyright (c) 2015 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package BLAH::Role::Authentication;
our $AUTHORITY = 'cpan:RSRCHBOY';
$BLAH::Role::Authentication::VERSION = '0.001'; # TRIAL
# ABSTRACT: BLAH base authentication role

use Moose::Role;
use namespace::autoclean 0.24;


requires 'authenticated';

!!42;

__END__

=pod

=encoding UTF-8

=for :stopwords Chris Weyl

=for :stopwords Wishlist flattr flattr'ed gittip gittip'ed

=head1 NAME

BLAH::Role::Authentication - BLAH base authentication role

=head1 VERSION

This document describes version 0.001 of BLAH::Role::Authentication - released August 26, 2015 as part of BLAH.

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 REQUIRED METHODS

=head2 authenticated

Returns true if authentication has been performed successfully; false if not.

What this means, exactly, is left to the implementer -- or more likely to more
concrete authentication roles.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<BLAH|BLAH>

=item *

L<BLAH|BLAH>

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
