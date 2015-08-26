#
# This file is part of BLAH
#
# This software is Copyright (c) 2015 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#
package BLAH;
our $AUTHORITY = 'cpan:RSRCHBOY';
# git description: 34a88a7
$BLAH::VERSION = '0.001'; # TRIAL

# ABSTRACT: Business Logic Adapter Helpers

use Moose;
use namespace::autoclean 0.24;
use Moose::Exporter;
use Moose::Util;
use MooseX::AbstractMethod;

use MooseX::Util::Meta::Class;

use BLAH::Role::BLAH;

with
    'MooseX::Traitor',
    ;

Moose::Exporter->setup_import_methods(
    also    => 'Moose',
);

sub init_meta {
    my $class = shift @_;
    my %args = @_;

    ### $class
    ### %args

    ### create metaclass and push BLAH into superclasses for: $args{for_class}
    my $meta = Moose->init_meta(@_, metaclass => 'MooseX::Util::Meta::Class');
    $meta->superclasses('BLAH');

    return $meta;
}


abstract 'execute';
abstract 'name';

with 'BLAH::Role::BLAH';

__PACKAGE__->meta->make_immutable;
!!42;

__END__

=pod

=encoding UTF-8

=for :stopwords Chris Weyl

=for :stopwords Wishlist flattr flattr'ed gittip gittip'ed

=head1 NAME

BLAH - Business Logic Adapter Helpers

=head1 VERSION

This document describes version 0.001 of BLAH - released August 26, 2015 as part of BLAH.

=head1 SYNOPSIS

    # Create a BLAH!
    package MyApp::BLAH::Frobnicator;

    use BLAH;

    sub execute { ... scary things ... }

=head1 DESCRIPTION

You have a codebase that would make a Whole Foods buyer cry with joy.  It does
things -- important things -- but perhaps in ways that don't lend itself to
use elsewhere.  And now, naturally, you need to use that business logic
elsewhere.

Enter BLAH (Business Logic Adapter Helpers).

BLAH is intended to help create a thin layer to help normalize access to
business logic in your codebase by providing a common place and structure to
host whatever it is you need to do to invoke that bit of business logic
elsewhere.  It's designed to be as thin and flexible as possible, so at its
core each BLAH only provide the necessary structure to normalize invoking your
business logic, regardless of where it may reside.

Of course, providing the actual methods to invoke your logic is entirely your
responsibility; we only seek to help keep things sane (in an insane world,
most likely).

=head1 REQUIRED METHODS

=head2 execute

This is the core of your BLAH.  It should implement your command -- whether
embedded, a simple call/delegation to some other package, or hideously
complex -- in its entirety.

C<execute()> should die on failure, and return otherwise.

=head2 name

The "name" of this BLAH.  BLAH implementers are left to define this on their own,
but it is anticipated that the name here will be something like the package name with
a namespace prefix removed; e.g. if your BLAH namespace is "Organic::Produce::BLAH"
and the BLAH package is "Organic::Produce::BLAH::Relabel::Pesticides", then the BLAH name would be
-- surprise! -- "Relabel::Pesticides".

=head1 SUBCLASSING

If you wish to create a subclass of this class to use as the base for your BLAH, note
that you should B<not> make that subclass immutable unless it also implements
the execute() method.

(See L<MooseX::AbstractMethod> for details.)

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<BLAH::Role::BLAH|BLAH::Role::BLAH>

=item *

L<MooseX::Traitor|MooseX::Traitor>

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
