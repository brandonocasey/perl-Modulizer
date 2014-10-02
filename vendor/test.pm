package test;
#
# Short description for test.pm
#
# Author bcasey <bcasey@bcasey_testharness.qa.interoptechnologies.com>
# Version 0.1
# Copyright (C) 2014 bcasey <bcasey@bcasey_testharness.qa.interoptechnologies.com>
# Modified On 2014-10-02 10:17
# Created  2014-10-02 10:17
#
use strict;
use warnings;

our @ISA = qw(Exporter);
our %EXPORT_TAGS = ( 'all' => [ qw() ] );
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = qw();
our $VERSION = '1.00';
require Exporter;
use AutoLoader qw(AUTOLOAD);


sub new
{
    my $class = shift;
    my $arg = shift;
    my $self = {};

	print "Inside of Test\n";


    bless($self, $class);
    return $self;
}


1;
# __END__
# # Below is stub documentation for your module. You'd better edit it!
