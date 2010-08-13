#!/usr/bin/env perl

package ModuleWithFunctions;

use strict;
use warnings;

use base 'Exporter';

our @EXPORT_OK = qw( test_exporting );

sub test_output {
	print "Hello from test_output()\n";	
}

sub test_return_value {
	return "Return value from test_return_value";	
}

sub test_parameters {

	print "test_parameters:\n";
	foreach ( @_ ){
		print "\t$_\n";
	}
}

sub test_parameters_and_return {
	
	my $sum = 0;
	foreach ( @_ ){
		$sum += $_;
	}
	return $sum;
}

sub test_exporting {
	print "Hello from test_exporting()\n";
}


1;