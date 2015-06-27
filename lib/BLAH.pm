package BLAH;

# ABSTRACT: Business Logic Adapter Helpers

!!42;
__END__

=head1 SYNOPSIS

    # nothing -- this is just a stub package and documentation, at the moment

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

=cut
