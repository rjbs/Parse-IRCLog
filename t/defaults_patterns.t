#!/usr/bin/perl

use Test::More 'no_plan';
use strict;
use warnings;

use_ok('Parse::IRCLog');

ok(
  (my $patterns = Parse::IRCLog->patterns),
  "patterns retrieved"
);

my @ok_nicks = qw( rjbs lathos nwp_ {KM} q[lamech] _james_ );
my @ok_chans = ( '#irchelp', '&', '#_secret', '#racecar#' );
my @ok_brack = ( '<@rjbs:#kwiki>', '< rjbs >', '< @q[uri]>', '< @ rjbs:&#&>' );

like($_, $patterns->{nick},           "$_ is an ok nick")           for (@ok_nicks);
like($_, $patterns->{chan},           "$_ is an ok chan")           for (@ok_chans);
like($_, $patterns->{nick_container}, "$_ is an ok nick container") for (@ok_brack);
