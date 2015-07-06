package BLAH::Name::From::Namespace;

# ABSTRACT: BLAH derives its name from a namespace prefix

use Moose::Role;
use namespace::autoclean 0.24;
use MooseX::AttributeShortcuts;

use MooseX::Types::Perl ':all';

=attr namespace

Our BLAH namespace.  Required, no default.

=cut

has namespace => (
    is       => 'ro',
    isa      => PackageName,
    required => 1,
);

=attr name

Our name; default is the consuming class' package sans the namespace prefix.

=pvt_method _build_name

Builder method for the name attribute.

=cut

has name => (
    is  => 'lazy',
    isa => PackageName, # FIXME for now...?

    builder => sub {
        my $self = shift @_;

        my $ns = $self->namespace;
        my $pkg = blessed $self;

        ### $ns
        ### $pkg

        my $name = ($pkg =~ s/^$ns:://);

        ### our name is: $name
        return $name;
    },
);


!!42;
__END__

=head1 DESCRIPTION

BLAH that consume this role have their name auto-generated from a given
namespace -- that is, the name is the package name sans the namespace prefix.

=head1 SEE ALSO

BLAH

=cut
