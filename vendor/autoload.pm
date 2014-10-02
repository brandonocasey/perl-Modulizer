package autoload;
use strict;
use warnings;

BEGIN {
	my $package = __PACKAGE__;
	my @files = <./vendor/*>;
	while (@files) {
		my $file = shift @files;
		if($file ne "./vendor/$package.pm") {
			if ( -d "$file" ) {
				push(@files, <$file/*>);
			} else {
				print "Found $file\n";
				require "$file";
			}
		}
	}
}
1;
