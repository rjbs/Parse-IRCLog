use strict;
use warnings;

use Parse::IRCLog;

package Parse::IRCLog::dircproxy;
our @ISA = qw(Parse::IRCLog);

sub patterns {
    return $_[0]{patterns} if ref $_[0] and defined $_[0]{patterns};

    {msg    => qr/^@([0-9]+)\s+<([+%@])?([^!]+)![^>]+>(\s)(.+)/,
     action => qr/^@([0-9]+)\s+\[([+%@])?([^!]+)![^\]]+\](\s)ACTION\s(.+)/};
}

1;
