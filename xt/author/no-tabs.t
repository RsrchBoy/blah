use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.15

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/BLAH.pm',
    'lib/BLAH/Enforces/Authentication.pm',
    'lib/BLAH/Enforces/Authorization.pm',
    'lib/BLAH/Role/Authentication.pm',
    'lib/BLAH/Role/Authorization.pm',
    'lib/BLAH/Role/BLAH.pm',
    'lib/BLAH/Types.pm',
    't/00-check-deps.t',
    't/00-compile.t',
    't/00-report-prereqs.dd',
    't/00-report-prereqs.t',
    't/blah.t',
    't/enforces/authentication.t',
    't/enforces/authorization.t',
    't/role/authentication.t',
    't/role/authorization.t',
    't/role/blah.t'
);

notabs_ok($_) foreach @files;
done_testing;
