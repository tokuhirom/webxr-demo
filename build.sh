#!/usr/bin/perl
use strict;
use warnings;

open my $fh, '>', 'index.html';

print {$fh} "<!doctype html>\n";
print {$fh} "<head>\n";
print {$fh} "<meta charset=utf-8>\n";
print {$fh} "<title>WebVR demos</title>\n";
print {$fh} "</head>\n";
print {$fh} "<body>\n";
for my $fname (glob("*.html")) {
    next if $fname eq 'index.html';
    print {$fh} qq!<a href="$fname">$fname</a><br>\n!;
}
print {$fh} "</body>\n";
print {$fh} "</html>\n";


