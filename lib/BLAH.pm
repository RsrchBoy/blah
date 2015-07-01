package BLAH;

# ABSTRACT: Business Logic Adapter Helpers

use Moose;
use namespace::autoclean 0.24;
use Moose::Exporter;
use Moose::Util;
use B::Hooks::AtRuntime;

use BLAH::Role::BLAH;

with 'MooseX::Traitor';

my ($import) = Moose::Exporter->build_import_methods(
    install => [ qw{ init_meta unimport } ],
    also    => 'Moose',

    class_metaroles => {
        # may as well stick this in while we're at it
        class => [ 'MooseX::TraitFor::Meta::Class::BetterAnonClassNames' ],
    },
);

sub import {
    my $class = $_[0];

    # not BLAH, but the class use'ing us.
    my $target = scalar caller;

    at_runtime {
        # set up our inheritance...
        Moose::Util::find_meta($target)->superclasses('BLAH');
        # ...and consume the "interface" role.
        Moose::Util::apply_all_roles($target, 'BLAH::Role::BLAH');
    };

    goto &$import;
}

=required_method execute

This is the core of your BLAH.  It should implement your command -- whether
embedded, a simple call/delegation to some other package, or hideously
complex -- in its entirety.

C<execute()> should die on failure, and return otherwise.

=cut

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
