use ExtUtils::MakeMaker;

WriteMakefile(
	NAME			=> 'Parse::IRCLog',
  LICENSE   => 'perl',
  AUTHOR    => 'Ricardo SIGNES <rjbs@cpan.org>',
	VERSION_FROM  => 'lib/Parse/IRCLog.pm'
	ABSTRACT_FROM => 'lib/Parse/IRCLog.pm'
  PREREQ_PM => {
    Carp   => 0,
    Symbol => 0,
  },
);

