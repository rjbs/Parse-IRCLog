#!perl
use strict;
use warnings;
use Test::More;

plan skip_all => "set RELEASE_TESTING to test" unless $ENV{RELEASE_TESTING};

if (eval { require Test::Perl::Critic }) {
  Test::Perl::Critic::all_critic_ok();
} else {
  plan skip_all => "couldn't load Test::Perl::Critic";
}
