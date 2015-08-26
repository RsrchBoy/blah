#!/usr/bin/env perl
#
# This file is part of BLAH
#
# This software is Copyright (c) 2015 by Chris Weyl.
#
# This is free software, licensed under:
#
#   The GNU Lesser General Public License, Version 2.1, February 1999
#

use strict;
use warnings;

use Test::More 0.88;

eval "use Test::NoSmartComments";
plan skip_all => 'Test::NoSmartComments required for checking comment IQ'
    if $@;

no_smart_comments_in("lib/BLAH.pm");
no_smart_comments_in("lib/BLAH/Enforces/Authentication.pm");
no_smart_comments_in("lib/BLAH/Enforces/Authorization.pm");
no_smart_comments_in("lib/BLAH/Role/Authentication.pm");
no_smart_comments_in("lib/BLAH/Role/Authorization.pm");
no_smart_comments_in("lib/BLAH/Role/BLAH.pm");
no_smart_comments_in("lib/BLAH/Types.pm");
no_smart_comments_in("t/00-compile.t");
no_smart_comments_in("t/00-report-prereqs.dd");
no_smart_comments_in("t/00-report-prereqs.t");
no_smart_comments_in("t/blah.t");
no_smart_comments_in("t/enforces/authentication.t");
no_smart_comments_in("t/enforces/authorization.t");
no_smart_comments_in("t/role/authentication.t");
no_smart_comments_in("t/role/authorization.t");
no_smart_comments_in("t/role/blah.t");

done_testing();
