use strict;
use warnings;
package Parse::IRCLog::dircproxy;
# ABSTRACT: parse dircproxy logs

use parent 'Parse::IRCLog';

sub patterns {
  my ($self) = @_;

  return $self->{patterns} if ref $self and defined $self->{patterns};

  my $p = {
    msg    => qr/^@([0-9]+)\s+<([+%@])?([^!]+)![^>]+>(\s)(.+)/,
    action => qr/^@([0-9]+)\s+\[([+%@])?([^!]+)![^\]]+\]\sACTION\s(.+)/,
  };

  $self->{patterns} = $p if ref $self;

  return $p;
}

1;
