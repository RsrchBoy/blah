package BLAH;

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

=required_method execute

This is the core of your BLAH.  It should implement your command -- whether
embedded, a simple call/delegation to some other package, or hideously
complex -- in its entirety.

C<execute()> should die on failure, and return otherwise.

=cut

abstract 'execute';

with 'BLAH::Role::BLAH';

__PACKAGE__->meta->make_immutable;
!!42;
__END__

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

=head1 SEE ALSO

BLAH::Role::BLAH
MooseX::Traitor

=cut
