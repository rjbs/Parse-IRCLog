use strict;
use warnings;

package Parse::IRCLog::dircproxy;
use parent 'Parse::IRCLog';

sub patterns {
    return $_[0]{patterns} if ref $_[0] and defined $_[0]{patterns};

    {msg    => qr/^@([0-9]+)\s+<([+%@])?([^!]+)![^>]+>(\s)(.+)/,
     action => qr/^@([0-9]+)\s+\[([+%@])?([^!]+)![^\]]+\]\sACTION\s(.+)/};
}

1;
